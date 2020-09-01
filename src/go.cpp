
#include <iostream>
#include <iomanip>

#include <go.h>

#include <util/util.h>


int Go::get_board_size() const {
    return util::align_up(Go::tile_width * this->w * this->h,
            8 * sizeof(go_board_bitv_t)) / (8 * sizeof(go_board_bitv_t));
}


Tile Go::tile_at(coord_t x, coord_t y) const {
    constexpr const uint32_t tiles_per_bitv = 8 * sizeof(go_board_bitv_t) / Go::tile_width;
    uint32_t idx = y * this->w + x;
    uint32_t tile_idx = idx / tiles_per_bitv;
    uint32_t bit_idx = Go::tile_width * (idx % tiles_per_bitv);

    go_board_bitv_t ret = (this->board[tile_idx] >> bit_idx) & tile_mask;
    assert(ret < Tile::num_states);
    return static_cast<Tile>(ret);
}


const char * Go::tile_repr_at(coord_t x, coord_t y) const {
    const static char black_str[] = "b";
    const static char white_str[] = "w";
    const static char empty_str[] = " ";

    const char * ret;

    Tile tile = this->tile_at(x, y);

    switch (tile) {
        case empty:
            ret = empty_str;
            break;
        case black:
            ret = black_str;
            break;
        case white:
            ret = white_str;
            break;
        default:
            assert(0);
    }
    return ret;
}



void Go::_play(GoMove & m) {

}

void Go::_undo(GoMove & m) {

}


Go::Go(coord_t w, coord_t h) : w(w), h(h), board_size(get_board_size()) {
    board = new go_board_bitv_t[board_size]();
    printf("game %dx%d, board size %u, tile_width: %d, int width: %lu\n", w, h,
            board_size, Go::tile_width, sizeof(go_board_bitv_t) * 8);
    assert(this->w * this->h * Go::tile_width <= 8 * sizeof(go_board_bitv_t) * board_size);
}


Go::~Go() {
    delete [] board;
}


bool Go::game_over() const {
    return false;
}

int Go::get_score() const {
    return 0;
}

bool Go::max_player() const {
    return true;
}

void Go::play(GameMove & m) {
    GoMove & gm = dynamic_cast<GoMove &>(m);
    this->_play(gm);
}

void Go::undo(GameMove & m) {
    GoMove & gm = dynamic_cast<GoMove &>(m);
    this->_undo(gm);
}

void Go::for_each_legal_move(std::function<void(Game &, GameMove &)> f) {

}


void Go::print(std::ostream & o) const {
    const static char TOP_LEFT[] = "\u250C\u2500\u2500\u2500";
    const static char TOP_CONNECTOR[] = "\u252C\u2500\u2500\u2500";
    const static char TOP_RIGHT[] = "\u2510";

    const static char MIDDLE_LEFT[] = "\u251C\u2500\u2500\u2500";
    const static char MIDDLE_CONNECTOR[] = "\u253C\u2500\u2500\u2500";
    const static char MIDDLE_RIGHT[] = "\u2524";

    const static char VBAR[] = "\u2502";

    const static char BOTTOM_LEFT[] = "\u2514\u2500\u2500\u2500";
    const static char BOTTOM_CONNECTOR[] = "\u2534\u2500\u2500\u2500";
    const static char BOTTOM_RIGHT[] = "\u2518";


    const static char COL_INDICATORS[] = "ABCDEFGHJKLMNOPQRSTUVWXYZ";



    uint32_t row_idc_width = util::log10(this->h);
    printf("width: %u (%d)\n", row_idc_width, this->h);

    o << std::setw(row_idc_width + 1) << "";
    for (int c = 0; c < this->w; c++) {
        o << "  " << COL_INDICATORS[c] << " ";
    }
    o << '\n';

    o << std::setw(row_idc_width + 1) << "" << TOP_LEFT;
    for (int c = 1; c < this->w; c++) {
        o << TOP_CONNECTOR;
    }
    o << TOP_RIGHT << '\n';


    for (int r = this->h - 1; r >= 0; r--) {
        o << std::setw(row_idc_width) << r + 1 << " " << VBAR;
        for (int c = 0; c < this->w; c++) {
            o << " " << this->tile_repr_at(c, r) << " " << VBAR;
        }
        o << '\n';

        if (r != 0) {
            o << std::setw(row_idc_width + 1) << "" << MIDDLE_LEFT;
            for (int c = 1; c < this->w; c++) {
                o << MIDDLE_CONNECTOR;
            }
            o << MIDDLE_RIGHT << '\n';
        }
    }

    o << std::setw(row_idc_width + 1) << "" << BOTTOM_LEFT;
    for (int c = 1; c < this->w; c++) {
        o << BOTTOM_CONNECTOR;
    }
    o << BOTTOM_RIGHT;
}


