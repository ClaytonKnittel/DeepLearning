#pragma once

#include <go.h>

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

    uint16_t w, h;
    state_bitv_t * data;

    GameState(Go & g);

    ~GameState();

    void print() const;
};


struct GameStateHash {
    size_t operator() (const GameState & state) const {
        return 0;
    }
};

