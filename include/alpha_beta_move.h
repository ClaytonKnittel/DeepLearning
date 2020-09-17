#pragma once

#include <limits>
#include <unordered_map>

#include <move_gen.h>


typedef uint64_t state_bitv_t;

struct GameState {
public:

    void set_idx(coord_t x, coord_t y, uint8_t color) {
        board_idx_t idx = y * w + x;
        board_idx_t bitv_idx = idx / els_per_bitv;
        uint8_t bitv_shift = (idx % els_per_bitv) * tile_width;

        state_bitv_t b = data[bitv_idx];
        b = (b & ~(tile_mask << bitv_shift)) |
            (((state_bitv_t) color) << bitv_shift);
        data[bitv_idx] = b;
    }

    uint8_t get_idx(coord_t x, coord_t y) const {
        board_idx_t idx = y * w + x;
        board_idx_t bitv_idx = idx / els_per_bitv;
        uint8_t bitv_shift = (idx % els_per_bitv) * tile_width;

        return (data[bitv_idx] >> bitv_shift) & tile_mask;
    }

private:

    void gen_data(Go & g) {
        size_t n_els = ((w * h) + els_per_bitv - 1) / els_per_bitv;
        data = (state_bitv_t *) malloc(n_els * sizeof(state_bitv_t));

        if (!data) {
            throw std::runtime_error("Unable to allocate memory for GameState");
        }

        for (coord_t r = 0; r < h; r++) {
            for (coord_t c = 0; c < w; c++) {
                uint8_t color = (uint8_t) g.tile_at(c, r);
                set_idx(c, r, color);
            }
        }
    }

public:

    static constexpr uint32_t tile_width = Go::tile_width;
    static constexpr uint32_t tile_mask = Go::tile_mask;
    static constexpr uint32_t els_per_bitv = (8 * sizeof(state_bitv_t)) / tile_width;

    static constexpr uint8_t empty = 0;
    static constexpr uint8_t black = 1;
    static constexpr uint8_t white = 2;

    uint16_t w, h;
    state_bitv_t * data;

    GameState(Go & g) : w(g.width()), h(g.height()) {
        gen_data(g);
    }

    ~GameState() {
        if (data) {
            free(data);
        }
    }

    void print() const {
        for (coord_t r = 0; r < h; r++) {
            for (coord_t c = 0; c < w; c++) {
                uint8_t color = get_idx(c, r);
                printf("%c", (color == black ? 'b' : color == white ? 'w' : color == empty ? '_' : '?'));
            }
            printf("\n");
        }
    }
};


struct GameStateHash {
   size_t operator() (const GameState & state) const {
       return 0;
   }
};


class AlphaBetaMove : public MoveGen {
    friend bool _play(Game &, GameMove & m, Game & g,
            int & alpha, int & beta, int & best_val, int depth,
            uint32_t res_mask, GameMove * move, uint64_t & cnt);
private:

    static constexpr int inf_depth = -1;
    static constexpr int min_int = std::numeric_limits<int>::min();
    static constexpr int max_int = std::numeric_limits<int>::max();

    std::unordered_map<GameState, int, GameStateHash> cache;

    Game & game;
    // maximum number of moves deep we will search
    int max_depth;


    static int move_search(Game & g, int alpha, int beta, int depth,
            GameMove * move, uint64_t & cnt);

public:

    AlphaBetaMove(Game & game, int max_depth=inf_depth) : game(game),
            max_depth(max_depth) {}

    virtual ~AlphaBetaMove() = default;

    virtual MoveStatus next_move(GameMove &);
};

