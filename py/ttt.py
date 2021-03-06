
PLAY = 0
X_WINS = 3
O_WINS = 1
DRAW = 2

class ttt:

    def __init__(self, w=3, h=3, to_win=3):
        assert(to_win <= max(w, h))
        self.w = w
        self.h = w
        self.to_win = to_win
        self.board = [' '] * (self.w * self.h)
        self.turn = 0
        self.state = PLAY
        # history of moves
        self.history = []

    def __call__(self, x, y):
        assert(x >= 0)
        assert(y >= 0)
        assert(x < self.w)
        assert(y < self.h)
        return self.board[y * self.w + x]

    def player(self):
        return 'X' if (self.turn & 1) == 0 else 'O'

    # returns true if current player is max player
    def max_player(self):
        return (self.turn & 1) == 0

    def game_over(self):
        return self.state != PLAY

    # return 1 if X wins, 0 if draw, -1 if O wins
    def get_state(self):
        assert(self.game_over())
        return self.state - 2

    def legal_moves(self):
        if self.game_over():
            return
        p = self.player()
        for y in range(self.h):
            for x in range(self.w):
                if self(x, y) == ' ':
                    yield (self.turn, p, x, y)

    def __check_win(self, move):
        _, p, x, y = move

        to_win = self.to_win

        # check row of move
        n_in_row = 0
        for xt in range(max(0, x - to_win + 1), min(self.w, x + to_win)):
            n_in_row = n_in_row + 1 if p == self(xt, y) else 0
            if n_in_row == to_win:
                return True

        # check column of move
        n_in_row = 0
        for yt in range(max(0, y - to_win + 1), min(self.h, y + to_win)):
            n_in_row = n_in_row + 1 if p == self(x, yt) else 0
            if n_in_row == to_win:
                return True

        # check top-left to bottom-right diagonal
        n_in_row = 0
        for dt in range(max(-to_win + 1, -x, -y),
                        min(to_win, self.w - x, self.h - y)):
            n_in_row = n_in_row + 1 if p == self(x + dt, y + dt) else 0
            if n_in_row == to_win:
                return True

        # check bottom-left to top-right diagonal
        n_in_row = 0
        for dt in range(max(-to_win + 1, -x, y - self.h + 1),
                        min(to_win, self.w - x, y + 1)):
            n_in_row = n_in_row + 1 if p == self(x + dt, y - dt) else 0
            if n_in_row == to_win:
                return True


    def play(self, move):
        turn, p, x, y = move
        assert(turn == self.turn)
        assert(p == self.player())
        self.board[y * self.w + x] = p
        self.turn += 1
        self.history.append(move)
        if self.__check_win(move):
            self.state = X_WINS if p == 'X' else O_WINS
        elif self.turn == self.w * self.h:
            self.state = DRAW

    def undo(self, move):
        turn, p, x, y = move
        assert(turn + 1 == self.turn)
        assert(p != self.player())
        old = self.board[y * self.w + x]
        assert(old == p)
        self.board[y * self.w + x] = ' '
        self.turn -= 1
        self.history.pop()
        self.state = PLAY

    # return game state as 2D board with two channels one for X pieces and 1
    # for O
    def game_state(self):
        dim4 = 1 if self.player() == 'X' else 0
        this_player = self.player()
        other_player = 'X' if this_player == 'O' else 'O'
        return [[[1, 0, 0, dim4] if self(x, y) == this_player else
                [0, 1, 0, dim4] if self(x, y) == other_player else
                [0, 0, 1, dim4] for x in range(self.w)]
                 for y in range(self.h)]

    # returns move given the move index (0 - # possible moves)
    def get_move(self, idx):
        return (self.turn, self.player(), idx % self.w, idx // self.w)

    def get_action_idx(self, action):
        return action[3] * self.w + action[2]

    @staticmethod
    def state_to_game(game_state):
        # need to fix
        abort()
        t = ttt()
        for i, x_loc in enumerate(game_state[:len(game_state) // 2]):
            if x_loc == 1:
                t.board[i] = 'X'
                t.turn += 1
        for i, o_loc in enumerate(game_state[len(game_state) // 2:]):
            if o_loc == 1:
                t.board[i] = 'O'
                t.turn += 1
        return t

    def copy(self):
        t = ttt(self.w, self.h, self.to_win)
        t.board = self.board[:]
        t.turn = self.turn
        t.state = self.state
        t.history = self.history[:]
        return t

    def __hash__(self):
        h = 0
        for t in self.board:
            v = 0 if t == ' ' else 1 if t == 'X' else 2
            h = 3 * h + v
        return h

    def __eq__(self, other):
        return hash(self) == hash(other)

    def __repr__(self):
        first_line = ' '.join(['{:>2} '.format(i) for i in range(self.w)])
        btwn = '   ' + '+'.join(['---'] * self.w)
        return '   ' + first_line + '\n' + \
                ('\n' + btwn + '\n').join(
                        ['{:>2}  '.format(r) + \
                                ' | '.join(self.board[r * self.w : (r + 1) * self.w])
            for r in range(self.h)])

