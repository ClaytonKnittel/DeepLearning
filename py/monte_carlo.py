
import tensorflow as tf

import numpy as np
from math import sqrt, log
import random

import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '2'

import tensorflow.python.util.deprecation as deprecation
deprecation._PRINT_DEPRECATION_WARNINGS = False


class mc:

    def __init__(self, C):
        self.N = 1
        self.C = C
        self.move_scores = {}
        self.move_counts = {}

    def heuristic(self, state):
        mult = -1 if state.max_player() else 1
        if state in self.move_scores:
            si = self.move_scores[state]
            ni = self.move_counts[state]
        else:
            si = 0
            ni = 1e-5
        return mult * si / ni + self.C * sqrt(log(self.N) / ni)

    def record(self, game_state, score):
        self.N += 1
        if game_state in self.move_scores:
            self.move_scores[game_state] += score
            self.move_counts[game_state] += 1
        else:
            game_state = game_state.copy()
            self.move_scores[game_state] = score
            self.move_counts[game_state] = 1


    def best_move(self, game_state):
        # list of all moves with same heuristic score
        moves = []
        best_h = -999999999
        for move in game_state.legal_moves():
            game_state.play(move)
            h = self.heuristic(game_state)
            game_state.undo(move)

            if h > best_h:
                best_h = h
                moves = [move,]
            elif h == best_h:
                moves.append(move)
        move = random.choice(moves)
        return move

    def random_walk(self, game_state):
        if game_state.game_over():
            return game_state.get_state()

        move = self.best_move(game_state)

        game_state.play(move)
        ret = self.random_walk(game_state)
        self.record(game_state, ret)
        game_state.undo(move)
        return ret




def np_to_tf(np_array):
    return tf.convert_to_tensor(np_array, dtype=tf.float32)

def tf_to_np(tf_tensor):
    return tf.make_ndarray(tf.make_tensor_proto(tf_tensor))

class nn_mc:

    def __init__(self):
        self.model = tf.keras.Sequential([
            tf.keras.layers.Dense(9, activation="relu"),
            tf.keras.layers.Dense(1, activation=tf.nn.sigmoid)
            ])
        self.states = []
        self.true_scores = []
        self.pred_scores = []

    # expected to already be converted to large 2D np array of state
    # representations
    # heuristic values are between (0, 1), and represent confidence in X
    # winning (1 = certain, 0 = impossible)
    def heuristic(self, states):
        states = np_to_tf(states)
        res = self.model(states)
        return res, [h[0] for h in tf_to_np(res)]

    def record(self, game_state, true_score, pred_score):
        self.states.append(game_state.game_state())
        self.true_scores.append(true_score)
        self.pred_scores.append(pred_score)

    def record_losses(self, loss_fn):
        self.loss = loss_fn(np_to_tf(self.true_scores), np_to_tf(self.pred_scores))

    def best_move(self, game_state):
        states = []
        moves = list(game_state.legal_moves())
        assert(len(moves) > 0)
        for move in moves:
            game_state.play(move)
            states.append(game_state.game_state())
            game_state.undo(move)

        # calculate heurstic from NN
        hts, hs = self.heuristic(states)

        if not game_state.max_player():
            # minimizing player chooses smallest value, so just negate
            # everything
            hs = [1 - h for h in hs]

        h_tot = sum(hs)
        assert(h_tot > 0)
        assert(min(hs) >= 0)

        # randomly choose from possible move choices using weighted random
        # distribution based on the NN's confidence in each move
        # (interval (0, 1))
        for i, (move, h) in enumerate(zip(moves, hs)):
            if random.random() < (h / h_tot):
                return move, tf.gather(hts, i)
            else:
                h_tot -= h
        # shouldn't reach under normal circumstances, only happens if floating
        # point error causes h_tot to be too large, so just choose last move
        return moves[-1], tf.gather(hts, -1)

    def random_walk(self, game_state):
        if game_state.game_over():
            # normally return +1 for X win, 0 for tie, -1 for O win, transform
            # to +1 for X win, +0.5 for tie, 0 for O win
            return (game_state.get_state() + 1) / 2

        move, ht = self.best_move(game_state)

        game_state.play(move)
        ret = self.random_walk(game_state)
        self.record(game_state, ret, ht)
        game_state.undo(move)
        return ret

    # trains network on accumulated learned data
    def train(self, opt, grad_tape):
        if len(self.true_scores) != 0:
            grads = grad_tape.gradient(self.loss, self.model.trainable_weights)
            opt.apply_gradients(zip(grads, self.model.trainable_weights))

        # reset batch data
        self.states = []
        self.true_scores = []
        self.pred_scores = []





def _monte_carlo_mean_score(tt, m, N, p=False, stor=None):
    scores = [m.random_walk(tt) for _ in range(N)]
    if p:
        _, pred = m.heuristic([tt.game_state(),])
        #print(pred[0], np.mean(scores))
        #print(tt)
        stor.append([pred[0], np.mean(scores), tt.copy()])
    return np.mean(scores)

def _monte_carlo(tt, m, N, d=1):
    # list of all moves with same monte carlo score
    stor = []
    moves = []
    best_h = -999999999
    mult = 1 if tt.max_player() else -1
    for move in tt.legal_moves():
        tt.play(move)
        h = mult * _monte_carlo_mean_score(tt, m, N, (d == 0), stor)
        tt.undo(move)

        if h > best_h:
            best_h = h
            moves = [move,]
        elif h == best_h:
            moves.append(move)

        #print(move, h)
    move = random.choice(moves)
    if d == 0:
        print('go')
        pred = [game[0] for game in stor]
        act = [game[1] for game in stor]
        boards = [str(game[2]) for game in stor]
        s = ""
        for p, a in zip(pred, act):
            s += "{:<20}".format(str(p) + " " + str(a))
        s += '\n'
        go = True
        while go:
            for i in range(len(boards)):
                b = boards[i]
                if b == "":
                    go = False
                    break
                idx = b.find('\n')
                s1 = b[:idx]
                if idx == -1:
                    boards[i] = ""
                else:
                    boards[i] = b[idx + 1:]
                s += "{:<20}".format(s1)
            s += '\n'
        print(s)
    return move


def monte_carlo(tt, N=100, C=.8):
    m = mc(C)
    return _monte_carlo(tt, m, N)


#@tf.function
def abs_loss(y_true, y_pred):
    return tf.math.reduce_mean(tf.abs(y_true - y_pred))


def train_nn_monte_carlo(game, n_games, N=100, save_loc="saved_models/ttt_nn"):
    m = nn_mc()

    opt = tf.optimizers.SGD(0.1)
    loss = abs_loss
    for epoch in range(n_games):
        print("game {}".format(epoch + 1))
        tt = game()

        while not tt.game_over():
            with tf.GradientTape() as tape:
                move = _monte_carlo(tt, m, N, 0)
                m.record_losses(abs_loss)
            m.train(opt, tape)
            tt.play(move)
            print()
            print(tt)
            print('\n')
        tf.saved_model.save(m.model, os.path.join(os.getcwd(), save_loc))




def nn_monte_carlo(tt, N=100, load_loc="saved_models/ttt_nn"):
    m = nn_mc()
    m.model = tf.saved_model.load(os.path.join(os.getcwd(), load_loc))
    return _monte_carlo(tt, m, N)

