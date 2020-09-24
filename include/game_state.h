#pragma once

#include <go.h>
#include <zobrist.h>

typedef uint64_t state_bitv_t;

struct GameState {
public:

    void set_idx(coord_t x, coord_t y, uint8_t color);

    uint8_t get_idx(coord_t x, coord_t y) const;

private:

    void gen_data(Go & g);

public:

    static constexpr uint32_t tile_width = Go::tile_width;
    static constexpr uint32_t tile_mask = Go::tile_mask;
    static constexpr uint32_t els_per_bitv = (8 * sizeof(state_bitv_t)) / tile_width;

    static constexpr uint8_t empty = 0;
    static constexpr uint8_t black = 1;
    static constexpr uint8_t white = 2;
    static constexpr uint8_t ko    = 3;

    uint16_t w, h;
    uint8_t turn_idx;
    state_bitv_t * data;
    ZobristHash zh;

    GameState(Go & g);

    ~GameState();

    void print() const;
};


struct GameStateHash {
    size_t operator() (const GameState & state) const {
        const ZobristHash & zh = state.zh;
        const zob_hash_t * table = zh.get_table();
        zob_hash_t h = 0;
        for (coord_t y = 0; y < state.h; y++) {
            for (coord_t x = 0; x < state.w; x++) {
                // TODO make more efficient
                uint8_t tile = (uint8_t) state.get_idx(x, y);
                h ^= table[zh.to_idx(x, y, tile)];
            }
        }
        h ^= zh.get_turn_hashes()[state.turn_idx];

        return ZobristHash::make_symm(h);;
    }
};

