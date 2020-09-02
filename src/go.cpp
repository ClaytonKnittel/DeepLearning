
#include <cassert>
#include <iostream>
#include <iomanip>

#include <go.h>

#include <util/util.h>





struct Tile {
    static constexpr const uint8_t num_neighbors = 4;

    uint32_t data;

    // when this tile has a stone on it, the tiles are linked in a list of
    // all stones in a string, sorted by the tile's index
    board_idx_t next_tile, prev_tile;

    Color color() const {
        return static_cast<Color>(data & Go::tile_mask);
    }

    void set_color(Color c) {
        data = (data & ~Go::tile_mask) | ((uint32_t) c);
    }

    uint32_t string_idx() const {
        return data >> Go::tile_width;
    }

    void set_string_idx(uint32_t idx) {
        data = (data & Go::tile_mask) | (idx << Go::tile_width);
    }

    uint32_t get_both() const {
        return data;
    }

    void set_both(Color c, uint32_t idx) {
        data = ((uint32_t) c) | (idx << Go::tile_width);
    }
};



struct __attribute__((aligned(sizeof(uint64_t)))) TileString {
    // when color is set to this, this TileString is "free"
    static constexpr const int unused = Color::num_states;
    // only record the exact locations of up to 8 liberties
    static constexpr const int tracked_liberties = 8;

    // list of liberties for this string, to be kept sorted by value.
    // if liberties > tracked_liberties, then the contents of this list
    // are undefined
    board_idx_t liberty_list[tracked_liberties];

    // which team the string belongs to, either black or white
    int color;

    union {
        // when this TileString is "allocated"
        struct {

            // number of stones in the string
            int size;

            // the number of empty tiles adjacent to this string
            int liberties;

            // index of the first stone in this string
            board_idx_t first_tile;

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


bool Go::is_liberty(board_idx_t idx) const {
    return tiles[idx].color() == Color::empty;
}



int Go::string_size(board_idx_t idx) const {
    const TileString & s = this->strings[idx];
    return s.size;
}

int Go::num_liberties(board_idx_t idx) const {
    const TileString & s = this->strings[idx];
    return s.liberties;
}


int Go::count_adj_liberties(board_idx_t idx) const {
    uint32_t n;
    int tot = 0;

    n = idx_up(idx);
    tot += tiles[n].color() == Color::empty;
    n = idx_left(idx);
    tot += tiles[n].color() == Color::empty;
    n = idx_right(idx);
    tot += tiles[n].color() == Color::empty;
    n = idx_down(idx);
    tot += tiles[n].color() == Color::empty;

    return tot;
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


void Go::append_string(board_idx_t idx, uint32_t string_idx) {
    board_idx_t prev_tile, tile;

    tile = strings[string_idx].first_tile;
    if (idx < tile) {
        strings[string_idx].first_tile = idx;

        prev_tile = tiles[tile].prev_tile;
    }
    else {
        do {
            prev_tile = tile;
            tile = tiles[tile].next_tile;
        } while (idx < tile);
    }

    tiles[prev_tile].next_tile = idx;
    tiles[tile].prev_tile = idx;

    tiles[idx].next_tile = tile;
    tiles[idx].prev_tile = prev_tile;

    TileString & s = strings[string_idx];
    // help the compiler out a bit :)
#define n tile
    if (s.liberties <= TileString::tracked_liberties) {
        // keep a queue of elements popped from the liberty_list in s
        board_idx_t pop_queue[TileString::tracked_liberties];
        board_idx_t new_queue[Tile::num_neighbors];

        uint8_t nq_size = 0;

        n = idx_up(idx);
        if (is_liberty(n)) {
            new_queue[nq_size] = n;
            nq_size++;
        }

        n = idx_left(idx);
        if (is_liberty(n)) {
            new_queue[nq_size] = n;
            nq_size++;
        }

        n = idx_right(idx);
        if (is_liberty(n)) {
            new_queue[nq_size] = n;
            nq_size++;
        }

        n = idx_down(idx);
        if (is_liberty(n)) {
            new_queue[nq_size] = n;
            nq_size++;
        }

        uint8_t nq_idx = 0, pq_idx = 0, list_idx = 0;
        uint8_t liberty_count = 0;

        static_assert(TileString::tracked_liberties == 8);
        // we know TileString's are aligned by 8 bytes, so we can copy the
        // entirety of liberty_list with two 8-byte memory transfers
        *((uint64_t *) &pop_queue[0]) = *((uint64_t *) &s.liberty_list[0]);
        *((uint64_t *) &pop_queue[4]) = *((uint64_t *) &s.liberty_list[4]);

        while (list_idx < TileString::tracked_liberties &&
                pq_idx < s.liberties && nq_idx < nq_size) {

            uint8_t smaller = pop_queue[pq_idx] < new_queue[nq_idx] ?
                pop_queue[pq_idx] : new_queue[nq_idx];
            s.liberty_list[list_idx] = smaller;

            pq_idx += pop_queue[pq_idx] == smaller;
            nq_idx += new_queue[nq_idx] == smaller;

            liberty_count++;
        }
        while (pq_idx < s.liberties) {
            if (list_idx < TileString::tracked_liberties) {
                s.liiberty_list[list_idx] = pop_queue[pq_idx];
                list_idx++;
            }
            pq_idx++;
            liberty_count++;
        }
        while (nq_idx < nq_size) {
            if (list_idx < TileString::tracked_liberties) {
                s.liiberty_list[list_idx] = new_queue[nq_idx];
                list_idx++;
            }
            nq_idx++;
            liberty_count++;
        }

        s.liberties = liberty_count;
    }
    else {

    }
#undef n
}


void Go::join_strings(uint32_t s1, uint32_t s2) {

}


void Go::merge_strings_around(board_idx_t idx, Color color,
        uint32_t string_idx) {
    board_idx_t n;
    uint32_t o_str_idx;

    n = idx_up(idx);
    if (tiles[n].color() == color &&
            (o_str_idx = tiles[n].string_idx()) != string_idx) {
        join_strings(string_idx, o_str_idx);
    }

    n = idx_left(idx);
    if (tiles[n].color() == color &&
            (o_str_idx = tiles[n].string_idx()) != string_idx) {
        join_strings(string_idx, o_str_idx);
    }

    n = idx_right(idx);
    if (tiles[n].color() == color &&
            (o_str_idx = tiles[n].string_idx()) != string_idx) {
        join_strings(string_idx, o_str_idx);
    }

    n = idx_down(idx);
    if (tiles[n].color() == color &&
            (o_str_idx = tiles[n].string_idx()) != string_idx) {
        join_strings(string_idx, o_str_idx);
    }

    Tile & t = tiles[idx];
    t.set_both(color, string_idx);
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


void Go::place_lone_tile(board_idx_t idx, Color color) {
    // need to allocate a new string for this tile
    uint32_t new_str = alloc_string();
    TileString & s = strings[new_str];

    Tile & t = tiles[idx];
    t.set_both(color, new_str);
    t.next_tile = t.prev_tile = idx;

    s.color = color;
    s.size = 1;
    s.first_tile = idx;
    s.liberties = count_adj_liberties(idx);
}


void Go::_do_play(board_idx_t idx, Color color) {
    board_idx_t n;
    uint32_t n_idx;

    // basically used to check whether there is 1 string to join or > 1, always
    // set to the last idx of string that was found that we must join, and in
    // case that string is adjacent to this tile in multiple directions, we
    // don't double count it
    uint32_t first_string_idx = -1;
    uint8_t n_string_joins = 0;

    n = idx_up(idx);
    if (tiles[n].color() == color) {
        n_idx = tiles[n].string_idx();
        n_string_joins += first_string_idx != n_idx;
        first_string_idx = n_idx;
    }

    n = idx_left(idx);
    if (tiles[n].color() == color) {
        n_idx = tiles[n].string_idx();
        n_string_joins += first_string_idx != n_idx;
        first_string_idx = n_idx;
    }

    n = idx_right(idx);
    if (tiles[n].color() == color) {
        n_idx = tiles[n].string_idx();
        n_string_joins += first_string_idx != n_idx;
        first_string_idx = n_idx;
    }

    n = idx_down(idx);
    if (tiles[n].color() == color) {
        n_idx = tiles[n].string_idx();
        n_string_joins += first_string_idx != n_idx;
        first_string_idx = n_idx;
    }


    if (n_string_joins == 0) {
        place_lone_tile(idx, color);
    }
    else if (n_string_joins == 1) {
        Tile & t = tiles[idx];
        // join with the one adjacent string
        t.set_color(color);
        append_string(idx, first_string_idx);
    }
    else {
        // join all strings we are connected to together
        merge_strings_around(idx, color, first_string_idx);
    }
}


void Go::_do_undo() {
    assert(0);
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


