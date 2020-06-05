
import tensorflow as tf

import numpy as np
from math import sqrt, log
import random

import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '2'


class mc:

    def __init__(self, C):
        self.N = 1
        self.C = C
        self.move_scores = {}
        self.move_counts = {}

    def heuristic(self, game_state):
        mult = -1 if game_state.max_player() else 1
        if game_state in self.move_scores:
            si = self.move_scores[game_state]
            ni = self.move_counts[game_state]
        else:
            si = 0
            ni = 1e-5
        return mult * si / ni + self.C * sqrt(log(self.N) / ni)

    def record(self, game_state, score, pred_score):
        self.N += 1
        if game_state in self.move_scores:
            self.move_scores[game_state] += score
            self.move_counts[game_state] += 1
        else:
            game_state = game_state.copy()
            self.move_scores[game_state] = score
            self.move_counts[game_state] = 1



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

    def heuristic(self, game_state):
        state = np_to_tf([game_state.game_state(),])
        res = self.model(state)
        return res

    def record(self, game_state, true_score, pred_score):
        self.states.append(game_state.game_state())
        self.true_scores.append(true_score)
        self.pred_scores.append(pred_score)

    def record_losses(self, loss_fn):
        self.loss = loss_fn(np_to_tf(self.true_scores), np_to_tf(self.pred_scores))

    # trains network on accumulated learned data
    def train(self, opt, grad_tape):
        if len(self.true_scores) != 0:
            grads = grad_tape.gradient(self.loss, self.model.trainable_weights)
            opt.apply_gradients(zip(grads, self.model.trainable_weights))

        # reset batch data
        self.states = []
        self.true_scores = []
        self.pred_scores = []



def best_move(tt, m):
    # list of all moves with same heuristic score
    moves = []
    best_h = -999999999
    for move in tt.legal_moves():
        tt.play(move)
        ht = m.heuristic(tt)
        if type(ht) == float:
            h = ht
        else:
            mult = -1 if tt.max_player() else 1
            h = mult * tf_to_np(ht)
        tt.undo(move)

        if h > best_h:
            best_h = h
            moves = [(move, ht),]
        elif h == best_h:
            moves.append((move, ht))
    move, best_ht = random.choice(moves)
    return move, best_ht


def random_walk(tt, m):
    if tt.game_over():
        return tt.get_state()

    move, ht = best_move(tt, m)

    tt.play(move)
    ret = random_walk(tt, m)
    m.record(tt, ret, ht)
    tt.undo(move)
    return ret



def _monte_carlo_mean_score(tt, m, N):
    scores = [random_walk(tt, m) for _ in range(N)]
    """for state in m.move_scores:
        print(m.move_scores[state], m.move_counts[state])
        print(state)"""
    return np.mean(scores)

def _monte_carlo(tt, m, N):
    # list of all moves with same monte carlo score
    moves = []
    best_h = -999999999
    mult = 1 if tt.max_player() else -1
    for move in tt.legal_moves():
        tt.play(move)
        h = mult * _monte_carlo_mean_score(tt, m, N)
        tt.undo(move)

        if h > best_h:
            best_h = h
            moves = [move,]
        elif h == best_h:
            moves.append(move)

        print(move, h)
    move = random.choice(moves)
    return move


def monte_carlo(tt, N=100, C=.8):
    m = mc(C)
    return _monte_carlo(tt, m, N)


#@tf.function
def abs_loss(y_true, y_pred):
    return tf.math.reduce_mean(tf.abs(y_true - y_pred))


def train_nn_monte_carlo(game, n_games, N=100, save_loc="saved_models/ttt_nn"):
    m = nn_mc()

    opt = tf.optimizers.SGD(0.05)
    loss = abs_loss
    for epoch in range(n_games):
        print("game {}".format(epoch + 1))
        tt = game()

        while not tt.game_over():
            with tf.GradientTape() as tape:
                move = _monte_carlo(tt, m, N)
                m.record_losses(abs_loss)
            m.train(opt, tape)
            tt.play(move)
            print(tt)
            print()
    tf.saved_model.save(m.model, os.path.join(os.getcwd(), save_loc))




def nn_monte_carlo(tt, N=100, load_loc="saved_models/ttt_nn"):
    m = nn_mc()
    m.model = tf.saved_model.load(os.path.join(os.getcwd(), load_loc))
    return _monte_carlo(tt, m, N)

