
import sys
import os

import go
import ttt

import numpy as np
import random
import re


if len(sys.argv) == 3:
    tt = ttt.ttt(w=19, h=19, to_win=5)

    print("go")
    while True:
        if False and tt.player() == 'O':
            move = None
        else:
            i = str(input())
            if i == "exit" or i == "quit" or i == "q":
                break
            regex = re.compile('([\d]+), ?([\d]+)')
            rf = regex.findall(i)
            if not rf:
                print("indecipherable")
                continue
            x, y = rf[0]
            x = int(x)
            y = int(y)
            if x < 0 or y < 0 or x >= tt.w or y >= tt.h:
                print("space ({}, {}) is out of bounds".format(x, y))
                continue
            if tt(x, y) != ' ':
                print("space ({}, {}) is occupied".format(x, y))
                continue
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


def minimax(tt, depth=0, alpha=-999999999, beta=999999999):
    if tt.game_over():
        #print(tt)
        #print(tt.get_state())
        return tt.get_state(), []

    moveList = []
    m = -2 if tt.max_player() else 2
    moves = tt.legal_moves() if tt.turn != 0 else tt.legal_first_moves()
    for move in moves:
        if tt.turn == 0:
            print(move)
        try:
            tt.play(move)
        except go.MoveError:
            continue
        val, movlis = minimax(tt, depth + 1, alpha, beta)
        tt.undo(move)
        if tt.max_player() and m < val:
            alpha = max(val, alpha)
            m = val
            moveList = movlis + [move,]
        if (not tt.max_player()) and m > val:
            beta = min(val, beta)
            m = val
            moveList = movlis + [move,]
        if alpha >= beta:
            break
    return m, moveList


w = 3
h = 3


def run_play_game():
    game = go.go(w=w, h=h)
    while True:
        _, moveList = minimax(game)
        if len(moveList) == 0:
            print("no move")
            break
        for move in reversed(moveList):
            game.play(move)
            print(game)
            print()
            bs, ws = game.get_score()
            print("score: \033[0;94m" + str(bs) + ' \033[0;91m' + str(ws) + '\033[0;39m')
            if game.game_over():
                print("game over, {}".format("black wins" if bs > ws else
                                             "white wins" if ws > bs else
                                             "draw"))
                print("score: \033[0;94m" + str(bs) + ' \033[0;91m' + str(ws) + '\033[0;39m')
                exit(0)

run_play_game()



