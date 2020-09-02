
#include <cassert>
#include <iostream>
#include <iomanip>

#include <go.h>

#include <util/util.h>



struct Tile {
    uint32_t data;

    Color color() const {
        return static_cast<Color>(data & Go::tile_mask);
    }

    void set_color(Color t) {
        data = (data & ~Go::tile_mask) | ((uint32_t) data);
    }

    uint32_t string_idx() const {
        return data >> Go::tile_width;
    }

    void set_string_idx(uint32_t idx) {
        data = (data & Go::tile_mask) | (idx << Go::tile_width);
    }
};



struct TileString {
    // when color is set to this, this TileString is "free"
    static constexpr const int unused = Color::num_states;

    // which team the string belongs to, either black or white
    int color;

    union {
        // when this TileString is "allocated"
        struct {

            // number of stones in the string
            int size;

            // the number of empty or occupied tiles adjacent to at least one stone in
            // this string
            int neighbors;

            // the number of empty tiles adjacent to this string
            int liberties;

        };
        // when this TileString is "free"
        struct {
            // index of next free TileString in list of free TileStrings
            int next_free;
        };
    };
};



board_idx_t Go::to_idx(coord_t x, coord_t y) const {
    return (y + 1) * this->w + (x + 1);
}


board_idx_t Go::idx_up(board_idx_t idx) const {
    return idx + this->w;
}

board_idx_t Go::idx_down(board_idx_t idx) const {
    return idx - this->w;
}

board_idx_t Go::idx_left(board_idx_t idx) const {
    return idx - 1;
}

board_idx_t Go::idx_right(board_idx_t idx) const {
    return idx + 1;
}




bool Go::color_matches(board_idx_t idx, Color color) const {
    return (tiles[idx].color() & color) != 0;
}

bool Go::color_equals(board_idx_t idx, Color color) const {
    return tiles[idx].color() == color;
}



int Go::string_size(board_idx_t idx) const {
    const TileString & s = this->strings[idx];
    return s.size;
}

int Go::num_neighbors(board_idx_t idx) const {
    const TileString & s = this->strings[idx];
    return s.neighbors;
}

int Go::num_liberties(board_idx_t idx) const {
    const TileString & s = this->strings[idx];
    return s.liberties;
}



/*
 * the board can be packed like so
 *
 * xo.oxo
 * oxox.x
 * x.xoxo
 * oxo.ox
 *
 * and so on, which can be tiled by the shape
 *
 * oxo
 * x.x
 * oxo
 * .
 *
 * which is 4/5 dense with stones
 */
uint32_t Go::calc_max_n_strings() const {
    return (this->w * this->h * 4 + 4) / 5;
}


void Go::init_strings() {
    // all strings are free
    this->free_strings = 0;

    for (int i = 0; i < this->max_n_strings; i++) {
        TileString & s = this->strings[i];
        s.color = TileString::unused;
        s.next_free = (i == this->max_n_strings - 1) ? -1 : i + 1;
    }
}


uint32_t Go::alloc_string() {
    uint32_t ret = this->free_strings;
    assert(ret != -1);
    assert(this->strings[this->free_strings].color == TileString::unused);
    this->free_strings = this->strings[this->free_strings].next_free;
    return ret;
}


void Go::free_string(uint32_t string_ident) {
    TileString & s = this->strings[string_ident];
    s.color = TileString::unused;
    s.next_free = this->free_strings;
    this->free_strings = string_ident;
}


void Go::__assign_memory() {
    tiles = (struct Tile *) util::align_up(((uint64_t) g_data),
            Go::g_data_alignment);
    strings = (struct TileString *) util::align_up((uint64_t) (tiles + this->n_tiles),
                Go::g_data_alignment);
}


void Go::clear() {
    __builtin_memset(this->tiles, 0, this->n_tiles * sizeof(Tile));

    board_idx_t idx = 0;
    // top row
    while (idx < this->w + 2) {
        tiles[idx].set_color(gray);
        idx++;
    }
    // two columns
    while (idx < this->n_tiles - this->w) {
        tiles[idx].set_color(gray);
        idx += this->w + 1;
        tiles[idx].set_color(gray);
        idx++;
    }
    // bottom row
    while (idx < this->n_tiles) {
        tiles[idx].set_color(gray);
        idx++;
    }

    init_strings();
}


Color Go::tile_at(coord_t x, coord_t y) const {
    board_idx_t idx = to_idx(x, y);
    const Tile & t = tiles[idx];
    return t.color();
}


const char * Go::tile_repr_at(coord_t x, coord_t y) const {
    const static char black_str[] = "\033[0;94mO\033[0;39m";
    const static char white_str[] = "\033[0;91mO\033[0;39m";
    const static char empty_str[] = " ";

    const char * ret;

    Color tile = this->tile_at(x, y);

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
            fprintf(stderr, "No such tile %d\n", tile);
            assert(0);
    }
    return ret;
}


void Go::set_tile_at(coord_t x, coord_t y, Color t) {
    board_idx_t idx = to_idx(x, y);
    Tile & tile = tiles[idx];
    tile.set_color(t);
}


bool Go::move_is_suicide(board_idx_t idx, Color color) const {
    board_idx_t n;
    Color c;

    n = idx_up(idx);
    c = tiles[idx].color();
    if (c == Color::empty || (c != Color::gray &&
                ((num_liberties(n) == 1) ^ (c == color)))) {
        return false;
    }

    n = idx_left(idx);
    c = tiles[idx].color();
    if (c == Color::empty || (c != Color::gray &&
                ((num_liberties(n) == 1) ^ (c == color)))) {
        return false;
    }

    n = idx_right(idx);
    c = tiles[idx].color();
    if (c == Color::empty || (c != Color::gray &&
                ((num_liberties(n) == 1) ^ (c == color)))) {
        return false;
    }

    n = idx_down(idx);
    c = tiles[idx].color();
    if (c == Color::empty || (c != Color::gray &&
                ((num_liberties(n) == 1) ^ (c == color)))) {
        return false;
    }

    return true;
}

void Go::_do_play(board_idx_t idx, Color color) {

}

void Go::_do_undo() {

}


Go::Go(coord_t w, coord_t h) : w(w), h(h) {
    // includes the borders
    this->n_tiles = (this->w + 2) * (this->h + 2);
    this->max_n_strings = this->calc_max_n_strings();
    this->g_data_size = util::align_up((uint64_t) (this->n_tiles * sizeof(Tile)),
            Go::g_data_alignment) +
        this->max_n_strings * sizeof(TileString);

    g_data = malloc(g_data_size + Go::g_data_alignment);
    this->__assign_memory();
    this->clear();
}


Go::Go(const Go & g) : w(g.w), h(g.h), g_data_size(g.g_data_size),
        n_tiles(g.n_tiles), max_n_strings(g.max_n_strings),
        free_strings(g.free_strings) {
    this->g_data = malloc(g_data_size + Go::g_data_alignment);
    __builtin_memcpy(this->g_data, g.g_data, g_data_size);
    this->__assign_memory();
}


Go::~Go() {
    free(g_data);
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
    board_idx_t idx = to_idx(gm.x, gm.y);

    assert(!move_is_suicide(idx, gm.color));

    this->_do_play(idx, gm.color);
}

void Go::undo(GameMove & m) {
    GoMove & gm = dynamic_cast<GoMove &>(m);
    (void) gm;
    this->_do_undo();
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


