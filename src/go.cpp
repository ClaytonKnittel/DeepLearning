
#include <iostream>
#include <sstream>
#include <iomanip>
#include <stdexcept>

#include <go.h>

#include <fun/print_colors.h>
#include <util/util.h>


#ifdef VERBOSE
#define speak(...) printf(__VA_ARGS__)
#else
#define speak(...)
#endif


static constexpr const size_t runtime_err_buf_size = 1024;
static char runtime_err_buf[runtime_err_buf_size];

#define VA_ARGS(...) , ##__VA_ARGS__
#define GO_ASSERT(expr, msg, ...) \
    if (__builtin_expect(!(expr), 0)) { \
        snprintf(runtime_err_buf, runtime_err_buf_size, msg \
                VA_ARGS(__VA_ARGS__)); \
        throw std::runtime_error(runtime_err_buf); \
    }



struct Tile {
    static constexpr const uint8_t num_neighbors = 4;
    static constexpr const board_idx_t list_end = 0xffffu;

    uint32_t data;

    // when this tile has a stone on it, the tiles are linked in a list of
    // all stones in a string, sorted by the tile's index
    // when the color of tile is empty, these values are undefined and may be
    // used to store temporary information
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


std::string GoMove::to_string() const {
    std::ostringstream os;
    os << (color == Color::black ? "black" : "white") << "(" << (int) this->x
        << ", " << (int) this->y << ")";
    return os.str();
}



board_idx_t Go::to_idx(coord_t x, coord_t y) const {
    return (y + 1) * (this->w + 2) + (x + 1);
}


board_idx_t Go::idx_up(board_idx_t idx) const {
    return idx + (this->w + 2);
}

board_idx_t Go::idx_down(board_idx_t idx) const {
    return idx - (this->w + 2);
}

board_idx_t Go::idx_left(board_idx_t idx) const {
    return idx - 1;
}

board_idx_t Go::idx_right(board_idx_t idx) const {
    return idx + 1;
}


std::string Go::idx_str(board_idx_t idx) const {
    int x, y;
    std::ostringstream os;
    y = (idx / (this->w + 2)) - 1;
    x = (idx % (this->w + 2)) - 1;
    os << "(" << x << ", " << y << ")";
    return os.str();
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

bool Go::is_stone(board_idx_t idx) const {
    uint8_t col = (uint8_t) tiles[idx].color();
    return (col ^ (col >> 1)) & 1;
}


void Go::mark_free_tile(board_idx_t idx) {
    Tile & t = tiles[idx];
    t.data |= Color::gray;
}

void Go::unmark_free_tile(board_idx_t idx) {
    Tile & t = tiles[idx];
    t.data &= ~Go::tile_mask;
}

bool Go::is_marked(board_idx_t idx) const {
    const Tile & t = tiles[idx];
    return (t.data & Color::gray) == Color::gray;
}



int Go::string_size(board_idx_t idx) const {
    const TileString & s = this->strings[tiles[idx].string_idx()];
    return s.size;
}

int Go::num_liberties(board_idx_t idx) const {
    const TileString & s = this->strings[tiles[idx].string_idx()];
    return s.liberties;
}


int Go::count_adj_liberties(board_idx_t idx) const {
    uint32_t n;
    int tot = 0;

    speak("counting adjacent liberties at %s\n", idx_str(idx).c_str());

    n = idx_up(idx);
    tot += tiles[n].color() == Color::empty;
    n = idx_left(idx);
    tot += tiles[n].color() == Color::empty;
    n = idx_right(idx);
    tot += tiles[n].color() == Color::empty;
    n = idx_down(idx);
    tot += tiles[n].color() == Color::empty;

    speak("  found %d\n", tot);

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
    GO_ASSERT(ret != -1, "no more free strings");
    GO_ASSERT(strings[ret].color == TileString::unused,
            "allocated string %d was not marked unused", ret);
    free_strings = strings[free_strings].next_free;

    speak("allocated string %d\n", ret);

    return ret;
}


void Go::free_string(uint32_t string_ident) {
    TileString & s = this->strings[string_ident];
    s.color = TileString::unused;
    s.next_free = this->free_strings;
    this->free_strings = string_ident;

    speak("freed string %d\n", string_ident);
}


uint32_t Go::liberty_list_merge(board_idx_t * dst, uint32_t dst_len,
        board_idx_t * l1, uint32_t l1_len,
        board_idx_t * l2, uint32_t l2_len) {

    uint32_t dst_idx = 0, l1_idx = 0, l2_idx = 0;

    while (l1_idx < l1_len && l2_idx < l2_len) {

        uint8_t smaller = l1[l1_idx] < l2[l2_idx] ? l1[l1_idx] : l2[l2_idx];

        if (dst_idx < dst_len) {
            dst[dst_idx] = smaller;
        }
        dst_idx++;

        l1_idx += l1[l1_idx] == smaller;
        l2_idx += l2[l2_idx] == smaller;
    }
    while (l1_idx < l1_len) {
        if (dst_idx < dst_len) {
            dst[dst_idx] = l1[l1_idx];
        }
        dst_idx++;
        l1_idx++;
    }
    while (l2_idx < l2_len) {
        if (dst_idx < dst_len) {
            dst[dst_idx] = l2[l2_idx];
        }
        dst_idx++;
        l2_idx++;
    }

    return dst_idx;
}


void Go::recompute_string(uint32_t string_idx) {
    TileString & s = strings[string_idx];

    uint32_t n_liberties = 0;

    /*
     * iterate through every tile in the string, count up the number of
     * liberties around the string, marking each liberty that is counted
     * (so it won't be double counted) and chain together a list of these
     * liberties to undo the markings afterward
     */
    board_idx_t n;
    board_idx_t tile = s.first_tile;
    board_idx_t last_lib = Tile::list_end;
    do {
        n = idx_up(tile);
        if (is_liberty(n) && !is_marked(n)) {
            n_liberties++;
            mark_free_tile(n);
            tiles[n].next_tile = last_lib;
            last_lib = n;
        }

        n = idx_left(tile);
        if (is_liberty(n) && !is_marked(n)) {
            n_liberties++;
            mark_free_tile(n);
            tiles[n].next_tile = last_lib;
            last_lib = n;
        }

        n = idx_right(tile);
        if (is_liberty(n) && !is_marked(n)) {
            n_liberties++;
            mark_free_tile(n);
            tiles[n].next_tile = last_lib;
            last_lib = n;
        }

        n = idx_down(tile);
        if (is_liberty(n) && !is_marked(n)) {
            n_liberties++;
            mark_free_tile(n);
            tiles[n].next_tile = last_lib;
            last_lib = n;
        }

        tile = tiles[tile].next_tile;
    } while (tile != s.first_tile);

    // undo markings
    while (last_lib != Tile::list_end) {
        unmark_free_tile(last_lib);
        last_lib = tiles[last_lib].next_tile;
    }
}


void Go::append_string(board_idx_t idx, Color color, uint32_t string_idx) {
    board_idx_t prev_tile, tile;

    speak("appending %s to string %d\n", idx_str(idx).c_str(), string_idx);

    // add the tile at idx to the proper location in the string's list of tiles
    board_idx_t first_tile = strings[string_idx].first_tile;
    tile = first_tile;
    if (idx < tile) {
        strings[string_idx].first_tile = idx;

        prev_tile = tiles[tile].prev_tile;
    }
    else {
        do {
            prev_tile = tile;
            tile = tiles[tile].next_tile;
        } while (idx > tile && tile != first_tile);
    }

    tiles[prev_tile].next_tile = idx;
    tiles[tile].prev_tile = idx;

    tiles[idx].next_tile = tile;
    tiles[idx].prev_tile = prev_tile;

#ifdef VERBOSE
    tile = strings[string_idx].first_tile;
    speak("  string now: (");
    do {
        printf("%s", idx_str(tile).c_str());
        tile = tiles[tile].next_tile;
        if (strings[string_idx].first_tile != tile) {
            printf(", ");
        }
    } while (strings[string_idx].first_tile != tile);
    printf(")\n");
#endif

    // calculate the updated string's liberties
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

        static_assert(TileString::tracked_liberties == 8);
        // we know TileString's are aligned by 8 bytes, so we can copy the
        // entirety of liberty_list with two 8-byte memory transfers
        *((uint64_t *) &pop_queue[0]) = *((uint64_t *) &s.liberty_list[0]);
        *((uint64_t *) &pop_queue[4]) = *((uint64_t *) &s.liberty_list[4]);

        s.liberties = liberty_list_merge(s.liberty_list,
                TileString::tracked_liberties,
                pop_queue, s.liberties,
                new_queue, nq_size);
    }
    else {
        // need to check which of the neighbors are liberties and not adjacent
        // to other tiles already in this string

        n = idx_up(idx);
        if (is_liberty(n)) {
            if ((!is_stone(idx_up(n)) ||
                        tiles[idx_up(n)].string_idx() != string_idx) &&
                    (!is_stone(idx_left(n)) ||
                        tiles[idx_left(n)].string_idx() != string_idx) &&
                    (!is_stone(idx_right(n)) ||
                        tiles[idx_right(n)].string_idx() != string_idx)) {

                s.liberties++;
            }
        }
        n = idx_left(idx);
        if (is_liberty(n)) {
            if ((!is_stone(idx_up(n)) ||
                        tiles[idx_up(n)].string_idx() != string_idx) &&
                    (!is_stone(idx_left(n)) ||
                        tiles[idx_left(n)].string_idx() != string_idx) &&
                    (!is_stone(idx_down(n)) ||
                        tiles[idx_down(n)].string_idx() != string_idx)) {

                s.liberties++;
            }
        }
        n = idx_right(idx);
        if (is_liberty(n)) {
            if ((!is_stone(idx_up(n)) ||
                        tiles[idx_up(n)].string_idx() != string_idx) &&
                    (!is_stone(idx_right(n)) ||
                        tiles[idx_right(n)].string_idx() != string_idx) &&
                    (!is_stone(idx_down(n)) ||
                        tiles[idx_down(n)].string_idx() != string_idx)) {

                s.liberties++;
            }
        }
        n = idx_down(idx);
        if (is_liberty(n)) {
            if ((!is_stone(idx_left(n)) ||
                        tiles[idx_left(n)].string_idx() != string_idx) &&
                    (!is_stone(idx_right(n)) ||
                        tiles[idx_right(n)].string_idx() != string_idx) &&
                    (!is_stone(idx_down(n)) ||
                        tiles[idx_down(n)].string_idx() != string_idx)) {

                s.liberties++;
            }
        }
    }
#undef n

    tiles[idx].set_both(color, string_idx);
    s.size++;
}


void Go::join_strings(uint32_t s1, uint32_t s2) {
    TileString & str1 = strings[s1];
    TileString & str2 = strings[s2];

    // merge all tiles in str1 and str2
    board_idx_t t1 = str1.first_tile, t2 = str2.first_tile;
    // the first tile of the resultant string is the minimum of the two
    // first tiles of each string
    board_idx_t new_head = t1 < t2 ? t1 : t2;

    // calculate the last tile in the resultant list, so we don't have to worry
    // about linking the tail back to the head afterward
    board_idx_t last_tile;
    {
        board_idx_t t1_last = tiles[t1].prev_tile;
        board_idx_t t2_last = tiles[t2].prev_tile;
        last_tile = t1_last < t2_last ? t1_last : t2_last;
    }
    while (t1 != str1.first_tile && t2 != str2.first_tile) {
        board_idx_t next_tile;
        if (t1 < t2) {
            next_tile = t1;
            t1 = tiles[t1].next_tile;
        }
        else {
            next_tile = t2;
            t2 = tiles[t2].next_tile;
        }
        
        tiles[last_tile].next_tile = next_tile;
        tiles[next_tile].prev_tile = last_tile;
        last_tile = next_tile;
    }
    // finish up whatever's left in whichever list wasn't emptied
    while (t1 != str1.first_tile) {
        tiles[last_tile].next_tile = t1;
        tiles[t1].prev_tile = last_tile;
        t1 = tiles[t1].next_tile;
    }
    while (t2 != str2.first_tile) {
        tiles[last_tile].next_tile = t2;
        tiles[t2].prev_tile = last_tile;
        t2 = tiles[t2].next_tile;
    }

    // lastly link the string to the head of the new list
    str1.first_tile = new_head;


    if (str1.liberties <= TileString::tracked_liberties &&
            str2.liberties <= TileString::tracked_liberties) {
        board_idx_t s1_buf[TileString::tracked_liberties];

        static_assert(TileString::tracked_liberties == 8);
        // we know TileString's are aligned by 8 bytes, so we can copy the
        // entirety of liberty_list with two 8-byte memory transfers
        *((uint64_t *) &s1_buf[0]) = *((uint64_t *) &str1.liberty_list[0]);
        *((uint64_t *) &s1_buf[4]) = *((uint64_t *) &str1.liberty_list[4]);

        str1.liberties = liberty_list_merge(str1.liberty_list,
                TileString::tracked_liberties,
                s1_buf, str1.liberties,
                str2.liberty_list, str2.liberties);
    }
    else {
        recompute_string(s1);
    }
}


void Go::merge_strings_around(board_idx_t idx, Color color,
        uint32_t string_idx) {
    board_idx_t n;
    uint32_t o_str_idx;

    speak("merging strings around %s into %d\n", idx_str(idx).c_str(),
            string_idx);

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
    const static char black_str[] = P_LBLUE "O" P_DEFAULT;
    const static char white_str[] = P_LRED "O" P_DEFAULT;
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
            GO_ASSERT(0, "No such tile %d", tile);
            __builtin_unreachable();
    }
    return ret;
}



bool Go::move_is_suicide(board_idx_t idx, Color color) const {
    board_idx_t n;
    Color c;

    speak("checking if %s suicidal\n", idx_str(idx).c_str());

    n = idx_up(idx);
    c = tiles[idx].color();
    if (c == Color::empty || (c != Color::gray &&
                ((num_liberties(n) == 1) ^ (c == color)))) {
        speak("no, b/c above %s\n", c == Color::empty ? "is empty" :
                (c == color ? "string has multiple liberties" :
                 "string would be captured"));
        return false;
    }

    n = idx_left(idx);
    c = tiles[idx].color();
    if (c == Color::empty || (c != Color::gray &&
                ((num_liberties(n) == 1) ^ (c == color)))) {
        speak("no, b/c left %s\n", c == Color::empty ? "is empty" :
                (c == color ? "string has multiple liberties" :
                 "string would be captured"));
        return false;
    }

    n = idx_right(idx);
    c = tiles[idx].color();
    if (c == Color::empty || (c != Color::gray &&
                ((num_liberties(n) == 1) ^ (c == color)))) {
        speak("no, b/c right %s\n", c == Color::empty ? "is empty" :
                (c == color ? "string has multiple liberties" :
                 "string would be captured"));
        return false;
    }

    n = idx_down(idx);
    c = tiles[idx].color();
    if (c == Color::empty || (c != Color::gray &&
                ((num_liberties(n) == 1) ^ (c == color)))) {
        speak("no, b/c below %s\n", c == Color::empty ? "is empty" :
                (c == color ? "string has multiple liberties" :
                 "string would be captured"));
        return false;
    }

    return true;
}


void Go::place_lone_tile(board_idx_t idx, Color color) {
    speak("placing lone tile at %s\n", idx_str(idx).c_str());

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

    speak("_do_play at %s\n", idx_str(idx).c_str());

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
        append_string(idx, color, first_string_idx);
    }
    else {
        // join all strings we are connected to together
        merge_strings_around(idx, color, first_string_idx);
    }
}


void Go::_do_undo() {
    assert(0);
}


void Go::_print(std::ostream & o,
        const std::function<const char *(int, int)> & print_fn,
        int piece_width) const {

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
            if (piece_width < 3) {
                o << " ";
            }
            o << print_fn(r, c);
            if (piece_width == 1) {
                o << " ";
            }
            o << VBAR;
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



Go::Go(coord_t w, coord_t h) : w(w), h(h), turn(0) {
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


Go::Go(const Go & g) : w(g.w), h(g.h), turn(g.turn),
        g_data_size(g.g_data_size), n_tiles(g.n_tiles),
        max_n_strings(g.max_n_strings), free_strings(g.free_strings) {
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

    speak("Playing move at %s\n", gm.to_string().c_str());
    GO_ASSERT(!move_is_suicide(idx, gm.color), "move %s is suicidal",
            gm.to_string().c_str());

    this->_do_play(idx, gm.color);
    this->turn++;
}

void Go::undo(GameMove & m) {
    GoMove & gm = dynamic_cast<GoMove &>(m);
    (void) gm;
    this->_do_undo();
}

void Go::for_each_legal_move(std::function<void(Game &, GameMove &)> f) {

}


void Go::print(std::ostream & o) const {
    this->_print(o,
            [&](int r, int c) -> const char* {
                return this->tile_repr_at(c, r);
            }, 1);
}

void Go::print_libs(std::ostream & o) const {
    this->_print(o,
            [&](int r, int c) -> const char * {
                static char buf[32];
                const char * p = this->tile_repr_at(c, r);
                strcpy(buf, p);

                size_t p_len = strlen(p);
                if (!is_liberty(to_idx(c, r))) {
                    uint32_t cnt = num_liberties(to_idx(c, r));
                    snprintf(buf + p_len, sizeof(buf) - p_len,
                            "%2u", cnt);
                }
                else {
                    snprintf(buf + p_len, sizeof(buf) - p_len, "  ");
                }
                return buf;
            }, 3);
}

void Go::print_str_idx(std::ostream & o) const {
    this->_print(o,
            [&](int r, int c) -> const char * {
                static char buf[32];
                const char * p = this->tile_repr_at(c, r);
                strcpy(buf, p);

                size_t p_len = strlen(p);
                if (!is_liberty(to_idx(c, r))) {
                    uint32_t cnt = tiles[to_idx(c, r)].string_idx();
                    snprintf(buf + p_len, sizeof(buf) - p_len,
                            "%2u", cnt);
                }
                else {
                    snprintf(buf + p_len, sizeof(buf) - p_len, "  ");
                }
                return buf;
            }, 3);
}



void Go::consistency_check() const {

    // check to make sure border is all gray
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
    
}


