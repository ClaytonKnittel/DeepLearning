
import sys
import os

import ttt
from monte_carlo import monte_carlo, train_nn_monte_carlo, nn_monte_carlo
import tensorflow as tf

import numpy as np
import random
import re


path = os.path.join(os.getcwd(), "saved_modules")

tt = ttt.ttt()

if len(sys.argv) == 2:

    print("go")
    while True:
        if tt.player() == 'O':
            move = monte_carlo(tt, 10)
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


train_nn_monte_carlo(ttt.ttt, 100, 20)


while True:
    moves = list(tt.legal_moves())
    if False and tt.player() == 'O':
        _, move = minimax(tt)
    else:
        move = monte_carlo(tt)
    tt.play(move)
    print(tt)
    print()
    if tt.game_over():
        print("game over, {}".format("x wins" if tt.state == ttt.X_WINS else
                                     "o wins" if tt.state == ttt.O_WINS else
                                     "draw"))
        break

