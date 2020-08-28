
import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '2'
os.environ['KERAS_BACKEND'] = "plaidml.keras.backend"
#os.environ['PLAIDML_USE_STRIPE'] = '1'
#os.environ['PLAIDML_JIT_ENABLE'] = '1'


import tensorflow as tf

#import tensorflow.keras as keras
import plaidml.keras as keras


import numpy as np
from math import sqrt, log, exp
import random


def np_to_tf(np_array):
    #return tf.convert_to_tensor(np_array, dtype=tf.float32)
    return keras.backend.constant(np_array, shape=np.shape(np_array))

def tf_to_np(tf_tensor):
    print(tf_tensor)
    return tf_tensor.eval()
    #return tf.make_ndarray(tf.make_tensor_proto(tf_tensor))
    #return keras.backend.eval(tf_tensor)



class IndexedGame:

    def __init__(self, game, policies):
        assert(len(policies) == len(game.history))
        game = game.copy()
        self.game_images = [None] * len(game.history)
        for idx, move in zip(range(len(game.history)-1, -1, -1),
                             reversed(game.history)):
            game.undo(move)
            self.game_images[idx] = (game.copy(), policies[idx])

    def __getitem__(self, idx):
        return self.game_images[idx]

    def __repr__(self):
        return ' '.join([str(len(game.history)) for game in self.game_images])


class GameList:

    def __init__(self, buffer_size=100):
        self.buffer = []
        self.buffer_size = buffer_size
        self.total_moves = 0

    def save_game(self, game, policies):
        self.buffer.append((game, IndexedGame(game, policies)))
        self.total_moves += len(game.history)
        if len(self.buffer) > self.buffer_size:
            first_game, _ = self.buffer.pop(0)
            self.total_moves -= len(first_game.history)

    @staticmethod
    def random_pick(idxGame):
        r = np.random.choice(len(idxGame.game_images))
        return idxGame[r]

    def random_batch(self, n_moves):
        game_list_choices = np.random.choice(len(self.buffer),
                size=n_moves,
                p=[len(game.history) / self.total_moves for game, _ in self.buffer])
        game_list = np.array(self.buffer)[game_list_choices]
        images = [(game.get_state(), GameList.random_pick(idxGame))
                  for game, idxGame in game_list]
        return [(image, end_state, policy)
                for end_state, (image, policy) in images]

    def __repr__(self):
        return ' '.join([str(itm) for itm in self.buffer])


class Node:
    
    def __init__(self, value):
        self.value = value
        # either min player (-1) or max player (+1)
        self.player = 0
        self.aggregate_score = 0
        self.num_visits = 0
        # map of moves to nodes
        self.children = {}

    def expanded(self):
        return len(self.children) > 0

    def get_value(self):
        # returns value of node as given by policy in NN
        return self.value

    def avg_value(self):
        return self.aggregate_score / self.num_visits \
                if self.num_visits > 0 else 0


def softmax(nums):
    expod = [exp(num) for num in nums]
    tot = sum(expod)
    return [e / tot for e in expod]

def custom_loss(y_true, y_pred):
    return y_true - y_pred


class MonteCarlo:

    def __init__(self, w, h, to_win, num_playouts=100, C=.4, model_save=None):
        self.game_w = w
        self.game_h = h
        self.game_tw = to_win
        if model_save:
            print("loading model")
            #self.model = tf.saved_model.load(model_save)
            self.model = keras.models.load_model(model_save)
        else:
            inpt = keras.Input(shape=(w, h, 4))

            # first convolution
            # 5x5 convolution filter with zero-padded board
            conv = keras.layers.Conv2D(32, 5, data_format="channels_last",
                    padding="same")
            bn   = keras.layers.BatchNormalization()
            relu = keras.layers.ReLU()

            x = relu(bn(conv(inpt)))

            # residual layers
            for _ in range(1):
                res = x

                conv = keras.layers.Conv2D(32, 3, data_format="channels_last",
                        padding="same")
                bn = keras.layers.BatchNormalization()
                relu = keras.layers.ReLU()
                x = relu(bn(conv(x)))

                conv = keras.layers.Conv2D(32, 3, data_format="channels_last",
                        padding="same")
                bn = keras.layers.BatchNormalization()
                x = bn(conv(x))

                x = keras.layers.Add()([x, res])
                relu = keras.layers.ReLU()
                x = relu(x)

            # main neural network body
            self.body = keras.Model(inputs=inpt, outputs=x)

            # value head
            conv = keras.layers.Conv2D(1, 1, data_format="channels_last")
            bn   = keras.layers.BatchNormalization()
            relu = keras.layers.ReLU()

            v = relu(bn(conv(x)))

            flat = keras.layers.Flatten()
            dens = keras.layers.Dense(128)
            relu = keras.layers.ReLU()

            v = relu(dens(flat(v)))

            dens = keras.layers.Dense(1, activation=keras.activations.tanh)
            v = dens(v)


            # policy head
            conv = keras.layers.Conv2D(2, 1, data_format="channels_last")
            bn   = keras.layers.BatchNormalization()
            relu = keras.layers.ReLU()

            p = relu(bn(conv(x)))

            flat = keras.layers.Flatten()
            dens = keras.layers.Dense(w * h)

            p = dens(flat(p))

            self.model = keras.Model(inputs=inpt, outputs=[v, p], name="value network")

            self.model.compile(optimizer=keras.optimizers.SGD(lr=0.01, decay=1e-6),
                    loss="mean_squared_error")

        self.optimizer = keras.optimizers.SGD(.05)
        self.num_playouts = num_playouts
        self.C = C

    def highest_ucb_child(self, node):
        N = node.num_visits
        CsqrtN = self.C * sqrt(N)
        return max([(CsqrtN * n.get_value() / (n.num_visits + 1) + n.avg_value(), (move, n))
                    for move, n in node.children.items()],
                key=lambda score_node: score_node[0])[1]

    def add_noise(self, node):
        moves = node.children.keys()
        noise = np.random.gamma(.2, 1., len(moves))
        # exploration percentage
        frac = .25
        for n, move in zip(noise, moves):
            v = node.children[move].value * (1 - frac) + n * frac
            assert(v >= 0)
            node.children[move].value = v

    def expand_child(self, game, node):
        max_player = 1 if game.max_player() else -1

        if game.game_over():
            return game.get_state()

        ht, policyt = self.model.predict(np_to_tf([game.game_state(),]), steps=1)
        h = tf_to_np(ht)[0,0]
        policy = tf_to_np(policyt)[0]
        #h = ht[0,0]
        #policy = policyt[0]

        p = {a : exp(policy[game.get_action_idx(a)])
                for a in game.legal_moves()}

        assert(len(list(game.legal_moves())) > 0)

        tot = sum(p.values())

        for move, val in p.items():
            child = Node(val / tot)
            child.player = max_player
            node.children[move] = child

        self.add_noise(node)

        return h

    def backpropagate(self, history, value):
        for node in history:
            node.aggregate_score += node.player * value
            node.num_visits += 1

    def random_walk(self, game, root):
        history = [root,]
        test_game = game.copy()

        while root.expanded():
            move, root = self.highest_ucb_child(root)
            history.append(root)
            test_game.play(move)

        value = self.expand_child(test_game, root)
        self.backpropagate(history, value)

    def print_confidence(self, game, root):
        pred   = []
        cnt    = []
        boards = []

        for move, node in root.children.items():
            game.play(move)
            pred.append(node.get_value())
            cnt.append(node.num_visits)
            boards.append(str(game))
            game.undo(move)

        # 3xact width
        wid = 4 * (game.w + 1)
        wid += 3

        assert(180 >= wid)
        num_per_row = (180 // wid)

        s = ""
        while True:
            cnt2 = 0
            for p, a in zip(pred, cnt):
                s += ("{:<" + str(wid) + "}").format("{:.6f} {}".format(p, a))
                cnt2 += 1
                if cnt2 == num_per_row:
                    break
            s += '\n'
            if cnt2 == num_per_row:
                pred = pred[num_per_row:]
                cnt = cnt[num_per_row:]

            go = True
            while go:
                for i in range(min(len(boards), num_per_row)):
                    b = boards[i]
                    if b == "":
                        go = False
                        break
                    idx = b.find('\n')
                    if idx == -1:
                        s1 = b
                        boards[i] = ""
                    else:
                        s1 = b[:idx]
                        boards[i] = b[idx + 1:]
                    s += ("{:<" + str(wid) + "}").format(s1)
                s += '\n'
            if len(boards) > num_per_row:
                boards = boards[num_per_row:]
                continue
            break
        print(s)


    def next_move_policy(self, game, p=False):
        assert(self.game_w == game.w)
        assert(self.game_h == game.h)
        assert(self.game_tw == game.to_win)

        root = Node(0)
        for _ in range(self.num_playouts):
            self.random_walk(game, root)

        if p:
            self.print_confidence(game, root)

        maxnv = 0
        next_move = None
        policy = [0] * (self.game_w * self.game_h)
        policy_tot = 0
        for action, node in root.children.items():
            policy[game.get_action_idx(action)] = node.num_visits
            policy_tot += node.num_visits
            if node.num_visits > maxnv:
                maxnv = node.num_visits
                next_move = action

        policy = [p / policy_tot for p in policy]

        return next_move, policy


    def next_move(self, game, p=False):
        assert(self.game_w == game.w)
        assert(self.game_h == game.h)
        assert(self.game_tw == game.to_win)

        root = Node(0)
        for _ in range(self.num_playouts):
            self.random_walk(game, root)

        if p:
            self.print_confidence(game, root)

        # return move that was visited the most
        return max([(node.num_visits, move)
                for move, node in root.children.items()],
                key=lambda visits_move: visits_move[0])[1]



from threading import Thread


def _play_games(mc, game_class, idx, retvals):
    game = game_class(w=mc.game_w, h=mc.game_h, to_win=mc.game_tw)
    policy_values = []
    while not game.game_over():
        move, policy = mc.next_move_policy(game)
        game.play(move)
        policy_values.append(policy)
    retvals[idx] = (game, policy_values)

def play_games_mt(mc, game_class, game_list, num_games):
    ts = [None] * num_games
    retvals = [None] * num_games
    for idx in range(num_games):
        ts[idx] = Thread(name="thread {}".format(idx), target=_play_games,
                args=(mc, game_class, idx, retvals))
        ts[idx].start()

    for idx in range(num_games):
        ts[idx].join()
        game, policy_values = retvals[idx]
        game_list.save_game(game, policy_values)


def play_games(mc, game_class, game_list, num_games):
    for _ in range(num_games):
        game = game_class(w=mc.game_w, h=mc.game_h, to_win=mc.game_tw)
        policy_values = []
        while not game.game_over():
            print("go3")
            move, policy = mc.next_move_policy(game)
            game.play(move)
            policy_values.append(policy)
        game_list.save(game, policy_values)


def learn_from_games(mc, game_list, n_batches, batch_size):
    for epoch in range(n_batches):
        batch = game_list.random_batch(batch_size)

        # construct input
        game_states = [game.game_state() for game, _v, _p in batch]
        # construct output
        expected_values = [[float(true_val),] for _g, true_val, _p in batch]
        expected_policies = [policy for _g, _v, policy in batch]

        with tf.GradientTape() as tape:
            nn_val, nn_policy = mc.model(np_to_tf(game_states))
            loss = tf.losses.mean_squared_error(nn_val, expected_values) + \
                    tf.nn.softmax_cross_entropy_with_logits(expected_policies, nn_policy)

        #loss += tf.nn.l2_loss()
        grads = tape.gradient(loss, mc.model.trainable_weights)
        mc.optimizer.apply_gradients(zip(grads, mc.model.trainable_weights))


