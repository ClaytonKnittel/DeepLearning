
#include <game_state.h>


void GameState::set_idx(coord_t x, coord_t y, uint8_t color) {
    board_idx_t idx = y * w + x;
    board_idx_t bitv_idx = idx / els_per_bitv;
    uint8_t bitv_shift = (idx % els_per_bitv) * tile_width;

    state_bitv_t b = data[bitv_idx];
    b = (b & ~(tile_mask << bitv_shift)) |
        (((state_bitv_t) color) << bitv_shift);
    data[bitv_idx] = b;
}

uint8_t GameState::get_idx(coord_t x, coord_t y) const {
    board_idx_t idx = y * w + x;
    board_idx_t bitv_idx = idx / els_per_bitv;
    uint8_t bitv_shift = (idx % els_per_bitv) * tile_width;

    return (data[bitv_idx] >> bitv_shift) & tile_mask;
}

void GameState::gen_data(Go & g) {
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


GameState::GameState(Go & g) : w(g.width()), h(g.height()),
        turn_idx((g.get_player() == white) + (g.has_passed() << 1)), zh(w, h) {
    gen_data(g);
}

GameState::~GameState() {
    if (data) {
        free(data);
    }
}

void GameState::print() const {
    for (coord_t r = 0; r < h; r++) {
        for (coord_t c = 0; c < w; c++) {
            uint8_t color = get_idx(c, r);
            printf("%c", (color == black ? 'b' : color == white ? 'w' : color == empty ? '_' : 'k'));
        }
        printf("\n");
    }
}


