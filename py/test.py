
import ttt
#import tensorflow as tf

import numpy as np
from math import sqrt, log
import random

import sys
import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '2'

path = os.path.join(os.getcwd(), "saved_modules")

"""
if len(sys.argv) == 2:
    t = tf.saved_model.load(path)

    print(t(tf.Variable([[1., 2.], [1., 0.], [100., 32.], [.14, .66], [-.44, -1.], [-1.5, 3.]])))

    exit(0)
"""


def make_model():
    return tf.keras.Sequential([
        tf.keras.layers.Dense(9, activation="relu"),
        tf.keras.layers.Dense(1, activation=tf.nn.sigmoid)
        ])

#t = make_model()

#print(t(tf.Variable([[1., 2.], [1., 0.]])))

#tf.saved_model.save(t, path)

tt = ttt.ttt()

def minimax(tt, max_agent, depth=0):
    if tt.game_over():
        return tt.get_state(), None

    best = None
    m = -2 if max_agent else 2
    for move in tt.legal_moves():
        tt.play(move)
        val, _ = minimax(tt, not max_agent, depth + 1)
        tt.undo(move)
        if max_agent and m < val:
            m = val
            best = move
        if (not max_agent) and m > val:
            m = val
            best = move
    return m, best


class mc:

    def __init__(self, C):
        self.N = 1
        self.C = C
        self.move_scores = {}
        self.move_counts = {}

    def heuristic(self, game_state):
        if game_state in self.move_scores:
            si = self.move_scores[game_state]
            ni = self.move_counts[game_state]
        else:
            si = 0
            ni = 1e-5
        return si / ni + self.C * sqrt(log(self.N) / ni)

    def record(self, game_state, score):
        self.N += 1
        if game_state in self.move_scores:
            self.move_scores[game_state] += score
            self.move_counts[game_state] += 1
        else:
            game_state = game_state.copy()
            self.move_scores[game_state] = score
            self.move_counts[game_state] = 1



def best_move(tt, m):
    # list of all moves with same heuristic score
    moves = []
    best_h = -999999999
    for move in tt.legal_moves():
        tt.play(move)
        h = m.heuristic(tt)
        tt.undo(move)

        if h > best_h:
            best_h = h
            moves = [move,]
        elif h == best_h:
            moves.append(move)
    move = random.choice(moves)
    return move


def random_walk(tt, m, max_player):
    if tt.game_over():
        if max_player:
            return tt.get_state()
        else:
            return -tt.get_state()

    move = best_move(tt, m)

    tt.play(move)
    ret = -random_walk(tt, m, not max_player)
    m.record(tt, ret)
    tt.undo(move)
    return ret



def monte_carlo(tt, max_player, N, C):
    m = mc(C)
    scores = [random_walk(tt, m, max_player) for _ in range(N)]
    """for state in m.move_scores:
        print(m.move_scores[state], m.move_counts[state])
        print(state)"""
    return np.mean(scores)

def best_monte_carlo(tt, max_player, N=30, C=.3):
    # list of all moves with same monte carlo score
    moves = []
    best_h = -999999999
    for move in tt.legal_moves():
        tt.play(move)
        h = -monte_carlo(tt, not max_player, N, C)
        tt.undo(move)

        if h > best_h:
            best_h = h
            moves = [move,]
        elif h == best_h:
            moves.append(move)

        print(move, h)
    move = random.choice(moves)
    return move


while True:
    moves = list(tt.legal_moves())
    if tt.player() == 'O':
        _, move = minimax(tt, tt.player() == 'X')
    else:
        move = best_monte_carlo(tt, tt.player() == 'X')
    tt.play(move)
    print(tt)
    print()
    if tt.game_over():
        print("game over, {}".format("x wins" if tt.state == ttt.X_WINS else
                                     "o wins" if tt.state == ttt.O_WINS else
                                     "draw"))
        break

