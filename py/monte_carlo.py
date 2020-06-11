
import tensorflow as tf

import numpy as np
from math import sqrt, log, exp
import random

import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '2'


def np_to_tf(np_array):
    return tf.convert_to_tensor(np_array, dtype=tf.float32)

def tf_to_np(tf_tensor):
    return tf.make_ndarray(tf.make_tensor_proto(tf_tensor))



class IndexedGame:

    def __init__(self, game):
        game = game.copy()
        self.game_images = [None] * (len(game.history) + 1)
        for idx, move in zip(range(len(game.history), 0, -1),
                             reversed(game.history)):
            self.game_images[idx] = game.copy()
            game.undo(move)
        self.game_images[0] = game

    def __getitem__(self, idx):
        return self.game_images[idx]

    def __repr__(self):
        return ' '.join([str(len(game.history)) for game in self.game_images])


class GameList:

    def __init__(self, buffer_size=100):
        self.buffer = []
        self.buffer_size = buffer_size
        self.total_moves = 0

    def save_game(self, game):
        self.buffer.append((game, IndexedGame(game)))
        self.total_moves += len(game.history)
        if len(self.buffer) > self.buffer_size:
            first_game, _ = self.buffer.pop(0)
            self.total_moves -= len(first_game.history)

    def random_batch(self, n_moves):
        game_list_choices = np.random.choice(len(self.buffer),
                size=n_moves,
                p=[len(game.history) / self.total_moves for game, _ in self.buffer])
        game_list = np.array(self.buffer)[game_list_choices]
        images = [np.random.choice(idxGame.game_images) for _, idxGame in game_list]
        return [(image, (end_state.get_state() + 1) / 2)
                for image, (end_state, _) in zip(images, game_list)]

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
        # returns value of node, adjusted to be negated if this is a minimizing
        # player
        return self.value if self.player == 1 else 1 - self.value

    def avg_value(self):
        return self.aggregate_score / self.num_visits \
                if self.num_visits > 0 else 0


def softmax(nums):
    expod = [exp(num) for num in nums]
    tot = sum(expod)
    return [e / tot for e in expod]


class MonteCarlo:

    def __init__(self, num_playouts=100, C=.4, model_save=None):
        if model_save:
            print("loading model")
            #self.model = tf.saved_model.load(model_save)
            self.model = tf.keras.models.load_model(model_save)
        else:
            self.model = tf.keras.Sequential([
                tf.keras.layers.Dense(36, activation="relu"),
                tf.keras.layers.Dense(36, activation="relu"),
                tf.keras.layers.Dense(1, activation=tf.nn.sigmoid)
                ])
        self.optimizer = tf.keras.optimizers.SGD(.05)
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
        noise = np.random.gamma(.3, 1., len(moves))
        # exploration percentage
        frac = .25
        for n, move in zip(noise, moves):
            node.children[move].value = \
                    node.children[move].value * (1 - frac) + n * frac

    def expand_child(self, game, node):
        max_player = 1 if game.max_player() else -1

        moves = list(game.legal_moves())
        hs = [0] * len(moves)

        for idx, move in enumerate(moves):
            game.play(move)

            #if game.game_over():
            #    ht = (game.get_state() + 1) / 2
            #    child = Node(ht)
            #else:
            ht = self.model(np_to_tf([game.game_state(),]))
            hs[idx] = tf_to_np(ht)[0,0]

            game.undo(move)

        #hs = softmax(hs)

        for h, move in zip(hs, moves):
            child = Node(h)
            child.player = max_player
            node.children[move] = child

        #self.add_noise(node)

    def backpropagate(self, history, value, player):
        for node in history:
            node.aggregate_score += value if node.player == player else (1 - value)
            node.num_visits += 1

    def random_walk(self, game, root):
        history = [root,]
        test_game = game.copy()

        while root.expanded():
            move, root = self.highest_ucb_child(root)
            history.append(root)
            test_game.play(move)

        self.expand_child(test_game, root)
        self.backpropagate(history, root.get_value(), root.player)

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

        #pred = softmax(pred)

        s = ""
        for p, a in zip(pred, cnt):
            s += "{:<20}".format("{:.6f} {}".format(p, a))
        s += '\n'
        go = True
        while go:
            for i in range(len(boards)):
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
                s += "{:<20}".format(s1)
            s += '\n'
        print(s)


    def next_move(self, game, p=False):
        root = Node(0)
        for _ in range(self.num_playouts):
            self.random_walk(game, root)

        if p:
            self.print_confidence(game, root)

        # return move that was visited the most
        return max([(node.num_visits, move)
                for move, node in root.children.items()],
                key=lambda visits_move: visits_move[0])[1]



def play_games(mc, game_class, game_list, num_games):
    for _ in range(num_games):
        game = game_class()
        while not game.game_over():
            move = mc.next_move(game)
            game.play(move)
        game_list.save_game(game)



def learn_from_games(mc, game_list, n_batches, batch_size):
    for epoch in range(n_batches):
        batch = game_list.random_batch(batch_size)

        # construct input
        game_states = [game.game_state() for game, _ in batch]
        # construct output
        expected_output = [[true_val,] for _, true_val in batch]

        with tf.GradientTape() as tape:
            nn_val = mc.model(np_to_tf(game_states))
            loss = tf.losses.mean_squared_error(nn_val, expected_output)

        #loss += tf.nn.l2_loss()
        grads = tape.gradient(loss, mc.model.trainable_weights)
        mc.optimizer.apply_gradients(zip(grads, mc.model.trainable_weights))


