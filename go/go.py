
PLAY = 0
GAME_OVER = 1

EMPTY = 0
BLACK = 1
WHITE = 2

MAX_N_MOVES = 10

class MoveError(Exception):
    pass

def other_player(player):
    return 3 - player

class go:

    def __init__(self, w=5, h=5):
        self.w = w
        self.h = w
        self.board = [EMPTY] * (self.w * self.h)
        self.turn = 0
        self.state = PLAY

        self.n_b_captures = 0
        self.n_w_captures = 0

        # can be 0, or 1, for total number of passes that have been played
        # consecutively. If 2, then the game is over
        self.n_passes = 0

        # history of moves
        self.history = []
        self.history_set = set()

    def __call__(self, x, y):
        assert(x >= 0)
        assert(y >= 0)
        assert(x < self.w)
        assert(y < self.h)
        return self.board[y * self.w + x]

    def set(self, x, y, p):
        self.board[y * self.w + x] = p

    def player(self):
        return BLACK if (self.turn & 1) == 0 else WHITE

    def str_of(self, tile):
        return '\033[0;94mX\033[0;39m' if tile == BLACK else '\033[0;91mO\033[0;39m' if tile == WHITE else ' '

    # returns true if current player is max player
    def max_player(self):
        return (self.turn & 1) == 0

    def game_over(self):
        return self.state != PLAY

    # return 1 if X wins, 0 if draw, -1 if O wins
    def get_state(self):
        bs, ws = self.get_score()
        return bs - ws

    def legal_moves(self):
        if self.game_over():
            return
        p = self.player()
        for y in range(self.h):
            for x in range(self.w):
                if self(x, y) == EMPTY:
                    yield (self.turn, p, x, y)
        # pass
        yield (self.turn, p, -1, -1)

    def legal_first_moves(self):
        assert(self.turn == 0)
        p = self.player()
        for y in range((self.h+1) // 2):
            for x in range(y, (self.w+1) // 2):
                yield (self.turn, p, x, y)

    def _find_territory(self, pos, b_set, w_set, y_set, n_set, looking):
        if pos in looking:
            return 0
        if pos in b_set:
            return BLACK
        if pos in w_set:
            return WHITE
        if pos in y_set:
            return 3
        if pos in n_set:
            return 0
        _x, _y = pos

        if self(_x, _y) != EMPTY:
            return self(_x, _y)

        inw = False
        inb = False
        looking.add(pos)
        for x, y in self.surrounding_tiles((0, 0, _x, _y)):
            t = self._find_territory((x, y), b_set, w_set, y_set, n_set, looking)
            if t == BLACK:
                inb = True
            elif t == WHITE:
                inw = True
            elif t == 3:
                inw = True
                inb = True
        looking.remove(pos)
        if inw and inb:
            y_set.add(pos)
            return 3
        elif inb:
            b_set.add(pos)
            return BLACK
        elif inw:
            w_set.add(pos)
            return WHITE
        else:
            n_set.add(pos)
            return 0

    # returns (black score, white score)
    def get_score(self, p=False):

        b_set = set()
        w_set = set()

        for y in range(self.h):
            for x in range(self.w):
                if self(x, y) != EMPTY:
                    continue
                t = self._find_territory((x, y), set(), set(), set(), set(), set())
                if t == BLACK:
                    b_set.add((x, y))
                elif t == WHITE:
                    w_set.add((x, y))
        if p:
            print(b_set)
            print(w_set)
        return len(b_set) + self.n_b_captures, len(w_set) + self.n_w_captures

    def surrounding_tiles(self, move):
        _, p, x, y = move
        if 0 < x:
            yield (x - 1, y)
        if 0 < y:
            yield (x, y - 1)
        if x + 1 < self.w:
            yield (x + 1, y)
        if y + 1 < self.h:
            yield (x, y + 1)

    def surrounded(self, move):
        _, p, _x, _y = move
        otherp = other_player(p)
        surr = True
        assert(self(_x, _y) == p)
        self.set(_x, _y, otherp)
        for x, y in self.surrounding_tiles(move):
            t = self(x, y)
            if t == EMPTY:
                surr = False
            elif t == p and surr:
                surr = self.surrounded((_, p, x, y))
        self.set(_x, _y, p)
        return surr

    def remove_all(self, move):
        _, p, _x, _y = move
        assert(self(_x, _y) != EMPTY)
        self.set(_x, _y, EMPTY)
        tot = 1
        for x, y in self.surrounding_tiles(move):
            if self(x, y) == p:
                tot += self.remove_all((_, p, x, y))
        return tot

    def _territory_check(self, last_move):
        # first check to see if we capture
        _, p, _x, _y = last_move
        otherp = other_player(p)
        tot_capts = 0
        for x, y in self.surrounding_tiles(last_move):
            if self(x, y) == otherp and self.surrounded((_, otherp, x, y)):
                tot_capts += self.remove_all((_, otherp, x, y))
        if tot_capts == 0:
            if self.surrounded((_, p, _x, _y)):
                return False

        if p == BLACK:
            self.n_b_captures += tot_capts
        else:
            self.n_w_captures += tot_capts
        return True

    def play(self, move):
        turn, p, x, y = move
        assert(turn == self.turn)
        assert(p == self.player())
        assert(self.state != GAME_OVER)

        h = self.intify()
        has = hash(self)

        if x == -1 and y == -1:
            # pass
            if self.n_passes == 0:
                self.n_passes = 1
            else:
                self.state = GAME_OVER
        else:
            self.board[y * self.w + x] = p
            if not self._territory_check(move):
                # illegal move
                self.unintify(h)
                raise MoveError('move is suicidal')
            self.n_passes = 0
        self.turn += 1

        if has in self.history_set:
            self.unintify(h)
            raise MoveError('move would repeat previously seen game state')
        self.history.append(h)
        self.history_set.add(has)

        if self.turn + 1 == MAX_N_MOVES:
            # force the game to end
            self.state = GAME_OVER

    def undo(self, move):
        turn, p, x, y = move
        assert(turn + 1 == self.turn)
        assert(p != self.player())
        old = self.board[y * self.w + x]
        #assert(old == p)

        h = self.history[-1]
        self.unintify(h)
        self.history_set.remove(hash(self))

        self.history.pop()

    # returns move given the move index (0 - # possible moves)
    def get_move(self, idx):
        return (self.turn, self.player(), idx % self.w, idx // self.w)

    def get_action_idx(self, action):
        return action[3] * self.w + action[2]

    def unintify(self, state):
        self.n_passes = state % 2
        state //= 2
        self.state = state % 4
        state //= 4
        for i in reversed(range(len(self.board))):
            self.board[i] = state % 3
            state //= 3
        self.n_w_captures = state % MAX_N_MOVES
        state //= MAX_N_MOVES
        self.n_b_captures = state % MAX_N_MOVES
        state //= MAX_N_MOVES
        self.turn = state

    def intify(self) -> int:
        h = self.turn
        h = MAX_N_MOVES * h + self.n_b_captures
        h = MAX_N_MOVES * h + self.n_w_captures
        for t in self.board:
            h = 3 * h + t
        h = h * 4 + self.state
        h = h * 2 + self.n_passes
        return h

    def copy(self):
        t = go(self.w, self.h)
        t.board = self.board[:]
        t.turn = self.turn
        t.state = self.state
        t.history = self.history[:]
        return t

    def __hash__(self) -> int:
        h = 0
        for t in self.board:
            h = 3 * h + t
        h = h * 2 + self.n_passes
        return h

    def __eq__(self, other):
        return hash(self) == hash(other)

    def __repr__(self):
        turn = 'turn: ' + str(self.turn) + '\n'
        score = 'black: \033[0;94m' + str(self.n_b_captures) + '\033[0;39m'
        score += '\twhite: \033[0;91m' + str(self.n_w_captures) + '\033[0;39m\n'
        if self.n_passes == 1:
            if self.player() == BLACK:
                score += '\033[0;91mwhite\033[0;39m passed\n'
            else:
                score += '\033[0;94mblack\033[0;39m passed\n'
        first_line = ' '.join(['{:>2} '.format(i) for i in range(self.w)])
        btwn = '   ' + '+'.join(['---'] * self.w)
        return turn + score + '   ' + first_line + '\n' + \
                ('\n' + btwn + '\n').join(
                        ['{:>2}  '.format(r) + \
                                ' | '.join([self.str_of(tile) for tile in self.board[r * self.w : (r + 1) * self.w]])
            for r in range(self.h)])

