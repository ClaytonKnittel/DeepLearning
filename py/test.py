
import sys
import os

import ttt
import monte_carlo as mc
import tensorflow as tf

import numpy as np
import random
import re

path = os.path.join(os.getcwd(), "saved_models")


if len(sys.argv) == 2:
    tt = ttt.ttt()
    m = mc.MonteCarlo(100, .4, path)

    print("go")
    while True:
        if tt.player() == 'O':
            move = m.next_move(tt, True)
        else:
            i = str(input())
            regex = re.compile('([\d]+), ?([\d]+)')
            x, y = regex.findall(i)[0]
            x = int(x)
            y = int(y)
            move = (tt.turn, tt.player(), x, y)
        tt.play(move)
        print(tt)
        print()
        if tt.game_over():
            print("game over, {}".format("x wins" if tt.state == ttt.X_WINS else
                                         "o wins" if tt.state == ttt.O_WINS else
                                         "draw"))
            break

    exit(0)


#tf.saved_model.save(t, path)


def minimax(tt, depth=0):
    if tt.game_over():
        return tt.get_state(), None

    best = None
    m = -2 if tt.max_agent() else 2
    for move in tt.legal_moves():
        tt.play(move)
        val, _ = minimax(tt, depth + 1)
        tt.undo(move)
        if tt.max_agent() and m < val:
            m = val
            best = move
        if (not tt.max_agent()) and m > val:
            m = val
            best = move
    return m, best


m = mc.MonteCarlo(100, .4, path)

#train_nn_monte_carlo(ttt.ttt, 1000, 100)


def run_play_game(m):
    tt = ttt.ttt()
    while True:
        moves = list(tt.legal_moves())
        if False and tt.player() == 'O':
            _, move = minimax(tt)
        else:
            move = m.next_move(tt, True)
        tt.play(move)
        print(tt)
        print()
        if tt.game_over():
            print("game over, {}".format("x wins" if tt.state == ttt.X_WINS else
                                         "o wins" if tt.state == ttt.O_WINS else
                                         "draw"))
            break


gl = mc.GameList(50)
"""
gl.save_game(tt)
print(gl.random_batch(2))
"""

for iter in range(800):
    print("epoch {}:".format(iter + 1))
    mc.play_games(m, ttt.ttt, gl, 25)
    mc.learn_from_games(m, gl, 2, 100)
    run_play_game(m)
    print("saving model")
    tf.keras.models.save_model(m.model, path)

