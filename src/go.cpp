
#include <cstring>
#include <iostream>
#include <sstream>
#include <iomanip>
#include <stdexcept>
#include <unordered_map>
#include <map>
#include <unordered_set>
#include <set>

#include <go.h>

#include <fun/print_colors.h>
#include <util/util.h>
#include <algorithms/sort.h>
#include <data_structs/union_find.h>


#ifdef VERBOSE
#define speak(...) printf(__VA_ARGS__)
#else
#define speak(...)
#endif


#include <curses.h>



#define FOR_EACH_ADJ(idx, n, action) \
    do { \
        n = idx_up((idx)); \
        action \
        n = idx_left((idx)); \
        action \
        n = idx_right((idx)); \
        action \
        n = idx_down((idx)); \
        action \
    } while (0)


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
    // only record the exact locations of up to 8 liberties
    static constexpr const int tracked_liberties = 8;

    // index that a string cannot have, to be used as a NULL string
    static constexpr const uint32_t no_string = 0xffffffffu;

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
    return (y + 1) * (this->w + 2) + (x + 1);
}


board_idx_t Go::idx_up(board_idx_t idx) const {
    return idx - (this->w + 2);
}

board_idx_t Go::idx_down(board_idx_t idx) const {
    return idx + (this->w + 2);
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
    os << Go::COL_INDICATORS[x] << this->h - y;
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



/*
 * TODO update:
 *
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
    //return (this->w * this->h * 4 + 4) / 5;
    return this->w * this->h;
}


void Go::init_strings() {
    // all strings are free
    this->free_strings = 0;

    for (int i = 0; i < this->max_n_strings; i++) {
        TileString & s = this->strings[i];
        s.next_free = (i == this->max_n_strings - 1) ? TileString::no_string :
            i + 1;
    }
}


uint32_t Go::alloc_string() {
    uint32_t ret = this->free_strings;
    GO_ASSERT(ret != -1, "no more free strings");
    free_strings = strings[free_strings].next_free;

    speak("allocated string %d\n", ret);

    return ret;
}


void Go::free_string(uint32_t string_ident) {
    TileString & s = this->strings[string_ident];
    s.next_free = this->free_strings;
    this->free_strings = string_ident;

    speak("freed string %d\n", string_ident);
}


uint32_t Go::liberty_list_merge(board_idx_t * dst, uint32_t dst_len,
        board_idx_t * l1, uint32_t l1_len,
        board_idx_t * l2, uint32_t l2_len) {

    uint32_t dst_idx = 0, l1_idx = 0, l2_idx = 0;

    while (l1_idx < l1_len && l2_idx < l2_len) {

        board_idx_t smaller = l1[l1_idx] < l2[l2_idx] ? l1[l1_idx] : l2[l2_idx];

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
    // store the list of liberties in here, since we will have to store
    // them in the liberty list if they will fit
    board_idx_t new_liberties[TileString::tracked_liberties];

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
            if (n_liberties < TileString::tracked_liberties) {
                new_liberties[n_liberties] = n;
            }
            n_liberties++;
            mark_free_tile(n);
            tiles[n].next_tile = last_lib;
            last_lib = n;
        }

        n = idx_left(tile);
        if (is_liberty(n) && !is_marked(n)) {
            if (n_liberties < TileString::tracked_liberties) {
                new_liberties[n_liberties] = n;
            }
            n_liberties++;
            mark_free_tile(n);
            tiles[n].next_tile = last_lib;
            last_lib = n;
        }

        n = idx_right(tile);
        if (is_liberty(n) && !is_marked(n)) {
            if (n_liberties < TileString::tracked_liberties) {
                new_liberties[n_liberties] = n;
            }
            n_liberties++;
            mark_free_tile(n);
            tiles[n].next_tile = last_lib;
            last_lib = n;
        }

        n = idx_down(tile);
        if (is_liberty(n) && !is_marked(n)) {
            if (n_liberties < TileString::tracked_liberties) {
                new_liberties[n_liberties] = n;
            }
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

    // store liberty count in string
    s.liberties = n_liberties;

    if (n_liberties <= TileString::tracked_liberties) {
        // store the sorted list of liberties in the liberty list for the
        // string
        util::const_sort<board_idx_t, TileString::tracked_liberties>(new_liberties);
        __builtin_memcpy(s.liberty_list, new_liberties,
                TileString::tracked_liberties * sizeof(board_idx_t));
    }
}


void Go::erase_string(uint32_t string_idx) {
    board_idx_t tile;
    TileString & s = strings[string_idx];
    Color color = static_cast<Color>(s.color);

    speak("erasing string %u\n", string_idx);

    // iterate through the tiles, removing them from the board and adding them
    // as liberties to each of the adjacent strings
    tile = s.first_tile;
    do {
        tiles[tile].set_color(Color::empty);
        add_liberties(tile, color);
        tile = tiles[tile].next_tile;
    } while (tile != s.first_tile);

    free_string(string_idx);
}


void Go::remove_liberty(uint32_t string_idx, board_idx_t idx) {
    TileString & s = strings[string_idx];

    speak("removing liberty %s from string %u\n", idx_str(idx).c_str(),
            string_idx);

    if (s.liberties == TileString::tracked_liberties + 1) {
        // the liberty list has undefined contents, so we have to recompute
        // the liberty list
        recompute_string(string_idx);
    }
    else if (s.liberties <= TileString::tracked_liberties) {
        uint8_t lib_idx = 0;

        // remove idx from the list of liberties, adjusting the positions of
        // the rest of the elements in the list to accomodate the change
        while (s.liberty_list[lib_idx] != idx) {
            lib_idx++;
        }
        s.liberties--;
        while (lib_idx < s.liberties) {
            s.liberty_list[lib_idx] = s.liberty_list[lib_idx + 1];
            lib_idx++;
        }
    }
    else {
        // we are not tracking the liberties at this point, so we can simply
        // take one off the total count
        s.liberties--;
    }
}


void Go::add_liberty(uint32_t string_idx, board_idx_t idx) {
    TileString & s = strings[string_idx];

    speak("adding liberty %s to string %u\n", idx_str(idx).c_str(),
            string_idx);

    if (s.liberties < TileString::tracked_liberties) {
        // we have to add idx to the list of liberties
        uint8_t lib_idx = 0;
        while (lib_idx < s.liberties && s.liberty_list[lib_idx] < idx) {
            lib_idx++;
        }
        board_idx_t tmp = idx;
        s.liberties++;
        while (lib_idx < s.liberties) {
            board_idx_t n = s.liberty_list[lib_idx];
            s.liberty_list[lib_idx] = tmp;
            tmp = n;
            lib_idx++;
        }
    }
    else {
        // we are not tracking liberties, so we can simply add one to the total
        // count
        s.liberties++;
    }
}


void Go::subtract_liberties(board_idx_t idx, Color color) {
    board_idx_t n;
    Color o = other_color(color);

    // to be set if the string for the tile in the corresponding direction
    // had a liberty taken away (so we don't double count any strings which
    // are adjacent in multiple directions)
    uint32_t up_str = TileString::no_string;
    uint32_t left_str = TileString::no_string;
    uint32_t right_str = TileString::no_string;
    uint32_t down_str;

    speak("subtracting liberties around %s\n", idx_str(idx).c_str());

    n = idx_up(idx);
    if (is_stone(n)) {
        up_str = tiles[n].string_idx();
        remove_liberty(up_str, idx);
        if (tiles[n].color() == o && strings[up_str].liberties == 0) {
            erase_string(up_str);
        }
    }

    n = idx_left(idx);
    if (is_stone(n)) {
        left_str = tiles[n].string_idx();
        if (left_str != up_str) {
            remove_liberty(left_str, idx);
            if (tiles[n].color() == o && strings[left_str].liberties == 0) {
                erase_string(left_str);
            }
        }
    }

    n = idx_right(idx);
    if (is_stone(n)) {
        right_str = tiles[n].string_idx();
        if (right_str != up_str && right_str != left_str) {
            remove_liberty(right_str, idx);
            if (tiles[n].color() == o && strings[right_str].liberties == 0) {
                erase_string(right_str);
            }
        }
    }

    n = idx_down(idx);
    if (is_stone(n)) {
        down_str = tiles[n].string_idx();
        if (down_str != up_str && down_str != left_str &&
                down_str != right_str) {
            remove_liberty(down_str, idx);
            if (tiles[n].color() == o && strings[down_str].liberties == 0) {
                erase_string(down_str);
            }
        }
    }

}


void Go::add_liberties(board_idx_t idx, Color color) {
    board_idx_t n;
    Color o = other_color(color);

    // to be set if the string for the tile in the corresponding direction
    // had a liberty taken away (so we don't double count any strings which
    // are adjacent in multiple directions)
    uint32_t up_str = TileString::no_string;
    uint32_t left_str = TileString::no_string;
    uint32_t right_str = TileString::no_string;
    uint32_t down_str;

    speak("adding liberties around %s\n", idx_str(idx).c_str());

    n = idx_up(idx);
    if (tiles[n].color() == o) {
        up_str = tiles[n].string_idx();
        add_liberty(up_str, idx);
    }

    n = idx_left(idx);
    if (tiles[n].color() == o) {
        left_str = tiles[n].string_idx();
        if (left_str != up_str) {
            add_liberty(left_str, idx);
        }
    }

    n = idx_right(idx);
    if (tiles[n].color() == o) {
        right_str = tiles[n].string_idx();
        if (right_str != up_str && right_str != left_str) {
            add_liberty(right_str, idx);
        }
    }

    n = idx_down(idx);
    if (tiles[n].color() == o) {
        down_str = tiles[n].string_idx();
        if (down_str != up_str && down_str != left_str &&
                down_str != right_str) {
            add_liberty(down_str, idx);
        }
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
        speak("%s", idx_str(tile).c_str());
        tile = tiles[tile].next_tile;
        if (strings[string_idx].first_tile != tile) {
            speak(", ");
        }
    } while (strings[string_idx].first_tile != tile);
    speak(")\n");
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

    speak("joining strings %u and %u\n", s1, s2);

    // true when no elements have been taken from the corresponding tile
    // list
    bool zero1 = true, zero2 = true;

    // merge all tiles in str1 and str2
    board_idx_t t1 = str1.first_tile;
    board_idx_t t2 = str2.first_tile;

    board_idx_t new_head, last_tile;

    // first, find the new head
    if (t1 < t2) {
        new_head = t1;
        last_tile = t1;
        t1 = tiles[t1].next_tile;
        zero1 = false;
    }
    else {
        new_head = t2;
        last_tile = t2;
        tiles[t2].set_string_idx(s1);
        t2 = tiles[t2].next_tile;
        zero2 = false;
    }

    // then iterate through the rest of both lists, appending them to the new
    // list
    while ((zero1 || t1 != str1.first_tile) &&
            (zero2 || t2 != str2.first_tile)) {

        board_idx_t next_tile;
        if (t1 < t2) {
            next_tile = t1;
            t1 = tiles[t1].next_tile;
            zero1 = false;
        }
        else {
            next_tile = t2;
            tiles[t2].set_string_idx(s1);
            t2 = tiles[t2].next_tile;
            zero2 = false;
        }

        speak("1 adding %s to the list\n", idx_str(next_tile).c_str());

        tiles[last_tile].next_tile = next_tile;
        tiles[next_tile].prev_tile = last_tile;
        last_tile = next_tile;
    }
    // finish up whatever's left in whichever list wasn't emptied
    while (zero1 || t1 != str1.first_tile) {
        tiles[last_tile].next_tile = t1;
        tiles[t1].prev_tile = last_tile;
        last_tile = t1;
        t1 = tiles[t1].next_tile;

        speak("2 adding %s to the list\n", idx_str(t1).c_str());
        zero1 = false;
    }
    while (zero2 || t2 != str2.first_tile) {
        tiles[last_tile].next_tile = t2;
        tiles[t2].prev_tile = last_tile;
        tiles[t2].set_string_idx(s1);
        last_tile = t2;
        t2 = tiles[t2].next_tile;

        speak("3 adding %s to the list\n", idx_str(t2).c_str());
        zero2 = false;
    }

    // lastly link the string to the head of the new list
    str1.first_tile = new_head;
    tiles[last_tile].next_tile = new_head;
    tiles[new_head].prev_tile = last_tile;

    str1.size += str2.size;

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

    free_string(s2);
}


void Go::merge_strings_around(board_idx_t idx, Color color,
        uint32_t string_idx) {
    board_idx_t n;
    uint32_t o_str_idx;

    speak("merging strings around %s into %d\n", idx_str(idx).c_str(),
            string_idx);

    // merge all surrounding friendly strings into string_idx
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

    // now add the tile at idx to string_idx
    append_string(idx, color, string_idx);
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
    while (idx < this->n_tiles - (this->w + 2)) {
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


const char * Go::tile_repr_at(coord_t x, coord_t y) const {
    const static char black_str[] = P_BLACK "\u25CF" P_DEFAULT;
    const static char white_str[] = P_WHITE "\u25CF" P_DEFAULT;
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


const char * Go::selected_tile_repr_at(coord_t x, coord_t y) const {
    const static char black_str[] = P_BLUE "\u25CF" P_DEFAULT;
    const static char white_str[] = P_YELLOW "\u25CF" P_DEFAULT;
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
    c = tiles[n].color();
    if (c == Color::empty || (c != Color::gray &&
                ((num_liberties(n) == 1) ^ (c == color)))) {
        speak("no, b/c above %s\n", c == Color::empty ? "is empty" :
                (c == color ? "string has multiple liberties" :
                 "string would be captured"));
        return false;
    }

    n = idx_left(idx);
    c = tiles[n].color();
    if (c == Color::empty || (c != Color::gray &&
                ((num_liberties(n) == 1) ^ (c == color)))) {
        speak("no, b/c left %s\n", c == Color::empty ? "is empty" :
                (c == color ? "string has multiple liberties" :
                 "string would be captured"));
        return false;
    }

    n = idx_right(idx);
    c = tiles[n].color();
    if (c == Color::empty || (c != Color::gray &&
                ((num_liberties(n) == 1) ^ (c == color)))) {
        speak("no, b/c right %s\n", c == Color::empty ? "is empty" :
                (c == color ? "string has multiple liberties" :
                 "string would be captured"));
        return false;
    }

    n = idx_down(idx);
    c = tiles[n].color();
    if (c == Color::empty || (c != Color::gray &&
                ((num_liberties(n) == 1) ^ (c == color)))) {
        speak("no, b/c below %s\n", c == Color::empty ? "is empty" :
                (c == color ? "string has multiple liberties" :
                 "string would be captured"));
        return false;
    }

    return true;
}


TileString & Go::place_lone_tile(board_idx_t idx, Color color) {
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

    uint32_t n, n_liberties = 0;

    n = idx_up(idx);
    s.liberty_list[n_liberties] = n;
    n_liberties += tiles[n].color() == Color::empty;

    n = idx_left(idx);
    s.liberty_list[n_liberties] = n;
    n_liberties += tiles[n].color() == Color::empty;

    n = idx_right(idx);
    s.liberty_list[n_liberties] = n;
    n_liberties += tiles[n].color() == Color::empty;

    n = idx_down(idx);
    s.liberty_list[n_liberties] = n;
    n_liberties += tiles[n].color() == Color::empty;

    s.liberties = n_liberties;

    return s;
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
    uint32_t n_captures = 0, str_idx;

    Color o = other_color(color);

    speak("_do_play at %s\n", idx_str(idx).c_str());

    n = idx_up(idx);
    if (tiles[n].color() == color) {
        n_idx = tiles[n].string_idx();
        n_string_joins += first_string_idx != n_idx;
        first_string_idx = n_idx;
    }
    else if (tiles[n].color() == o &&
            strings[(str_idx = tiles[n].string_idx())].liberties == 1) {
        n_captures += strings[str_idx].size;
    }

    n = idx_left(idx);
    if (tiles[n].color() == color) {
        n_idx = tiles[n].string_idx();
        n_string_joins += first_string_idx != n_idx;
        first_string_idx = n_idx;
    }
    else if (tiles[n].color() == o &&
            strings[(str_idx = tiles[n].string_idx())].liberties == 1) {
        n_captures += strings[str_idx].size;
    }

    n = idx_right(idx);
    if (tiles[n].color() == color) {
        n_idx = tiles[n].string_idx();
        n_string_joins += first_string_idx != n_idx;
        first_string_idx = n_idx;
    }
    else if (tiles[n].color() == o &&
            strings[(str_idx = tiles[n].string_idx())].liberties == 1) {
        n_captures += strings[str_idx].size;
    }

    n = idx_down(idx);
    if (tiles[n].color() == color) {
        n_idx = tiles[n].string_idx();
        n_string_joins += first_string_idx != n_idx;
        first_string_idx = n_idx;
    }
    else if (tiles[n].color() == o &&
            strings[(str_idx = tiles[n].string_idx())].liberties == 1) {
        n_captures += strings[str_idx].size;
    }

    board_idx_t new_ko_pos = no_position;

    if (n_string_joins == 0) {
        TileString & s = place_lone_tile(idx, color);

        // check to see if this generates a potential ko move by the other
        // player (which can only happen if this is a lone tile)
        if (s.liberties == 0) {
            uint8_t o_neighbors = 0;
            uint16_t ko_idx;
            board_idx_t n;
            FOR_EACH_ADJ(idx, n, {
                if (tiles[n].color() == o) {
                    TileString & os = strings[tiles[n].string_idx()];
                    if (os.liberties == 1 && os.size == 1) {
                        o_neighbors++;
                        ko_idx = n;
                    }
                }
            });
            if (o_neighbors == 1) {
                // we have found a ko space
                new_ko_pos = ko_idx;
            }
        }
    }
    else if (n_string_joins == 1) {
        append_string(idx, color, first_string_idx);
    }
    else {
        // join all strings we are connected to together
        merge_strings_around(idx, color, first_string_idx);
    }

    subtract_liberties(idx, color);

    // record the new ko position (if there was one)
    ko_move = new_ko_pos;

    // add captures
    if (color == Color::black) {
        black_captures += n_captures;
    }
    else {
        white_captures += n_captures;
    }
}


bool Go::is_star_tile(coord_t x, coord_t y) const {
    if (this->w == 19 && this->h == 19) {
        return (x == 3 || x == 9 || x == 15) &&
               (y == 3 || y == 9 || y == 15);
    }
    else if (this->w == 13 && this->h == 13) {
        return ((x == 3 || x == 9) && (y == 3 || y == 9)) ||
            (x == 6 && y == 6);
    }
    else if (this->w == 9 && this->h == 9) {
        return ((x == 2 || x == 6) && (y == 2 || y == 6)) ||
            (x == 4 && y == 4);
    }
    return false;
}


void Go::_print(std::ostream & o, const std::string & p1_name,
        const std::string & p2_name) const {

    o << p1_name << " score: " << black_captures << "\n";
    o << p2_name << " score: " << white_captures << "\n";
    o << "Ko position: ";
    if (ko_move == no_position) {
        o << "nowhere";
    }
    else {
        o << ko_move;
    }
    o << "\n";

    uint32_t row_idc_width = util::log10(this->h);

    o << std::setw(row_idc_width + 1) << "";
    for (int c = 0; c < this->w; c++) {
        o << COL_INDICATORS[c] << " ";
    }
    o << '\n';


    for (int r = 0; r < this->h; r++) {
        o << std::setw(row_idc_width) << this->h - r << " ";
        for (int c = 0; c < this->w; c++) {
            if (is_stone(to_idx(c, r))) {
                if (to_idx(c, r) == last_move) {
                    o << selected_tile_repr_at(c, r);
                }
                else {
                    o << tile_repr_at(c, r);
                }
            }
            else {
                if (is_star_tile(c, r)) {
                    o << "\u25EF";
                }
                else if (r == 0) {
                    if (c == 0) {
                        o << "\u250C";
                    }
                    else if (c == this->w - 1) {
                        o << "\u2510";
                    }
                    else {
                        o << "\u252C";
                    }
                }
                else if (r == this->h - 1) {
                    if (c == 0) {
                        o << "\u2514";
                    }
                    else if (c == this->w - 1) {
                        o << "\u2518";
                    }
                    else {
                        o << "\u2534";
                    }
                }
                else {
                    if (c == 0) {
                        o << "\u251C";
                    }
                    else if (c == this->w - 1) {
                        o << "\u2524";
                    }
                    else {
                        o << "\u253C";
                    }
                }
            }
            if (c != this->w - 1) {
                o << "\u2500";
            }
            else {
                o << "\n";
            }
        }
    }
}


void Go::_print_dbg(std::ostream & o,
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


    GO_ASSERT(piece_width <= max_piece_print_width, "piece width %d is higher "
            "than max piece width %d", piece_width, max_piece_print_width);


    /*
    for (int r = 0; r < this->h + 2; r++) {
        for (int c = 0; c < this->w + 2; c++) {
            Color col = tiles[r * (this->w + 2) + c].color();
            o << ((col == gray) ? "g" : (col == white) ? "w" :
                (col == black) ? "b" : "_");
        }
        o << std::endl;
    }*/

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


    for (int r = 0; r < this->h; r++) {
        o << std::setw(row_idc_width) << this->h - r << " " << VBAR;
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

        if (r != this->h - 1) {
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



Go::Go() : g_data(nullptr) {
}


Go::Go(coord_t w, coord_t h) : w(w), h(h), turn(0), last_move(0),
        ko_move(no_position), black_captures(0), white_captures(0) {
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


Go::Go(const Go & g) : w(g.w), h(g.h), turn(g.turn), last_move(g.last_move),
        ko_move(g.ko_move), g_data_size(g.g_data_size), n_tiles(g.n_tiles),
        max_n_strings(g.max_n_strings), free_strings(g.free_strings),
        black_captures(g.black_captures), white_captures(g.white_captures) {
    this->g_data = malloc(g_data_size + Go::g_data_alignment);
    this->__assign_memory();
    __builtin_memcpy(this->tiles, g.tiles, n_tiles * sizeof(Tile));
    __builtin_memcpy(this->strings, g.strings,
            max_n_strings * sizeof(TileString));
}


Go::Go(Go && g) : w(g.w), h(g.h), turn(g.turn), last_move(g.last_move),
        ko_move(g.ko_move), g_data_size(g.g_data_size), n_tiles(g.n_tiles),
        max_n_strings(g.max_n_strings), free_strings(g.free_strings),
        black_captures(g.black_captures), white_captures(g.white_captures) {

    g_data = g.g_data;
    tiles = g.tiles;
    strings = g.strings;
    g.g_data = nullptr;
    g.tiles = nullptr;
    g.strings = nullptr;
}


Go & Go::operator=(const Go & g) {
    w = g.w;
    h = g.h;
    turn = g.turn;
    last_move = g.last_move;
    ko_move = g.ko_move;
    g_data_size = g.g_data_size;
    n_tiles = g.n_tiles;
    max_n_strings = g.max_n_strings;
    free_strings = g.free_strings;
    black_captures = g.black_captures;
    white_captures = g.white_captures;

    if (g_data) {
        free(g_data);
    }
    this->g_data = malloc(g_data_size + Go::g_data_alignment);
    this->__assign_memory();
    __builtin_memcpy(this->tiles, g.tiles, n_tiles * sizeof(Tile));
    __builtin_memcpy(this->strings, g.strings,
            max_n_strings * sizeof(TileString));

    return *this;
}

Game & Go::operator=(const Game & game) {
    const Go & g = dynamic_cast<const Go &>(game);
    return (*this) = g;
}

Go & Go::operator=(Go && g) {
    w = g.w;
    h = g.h;
    turn = g.turn;
    last_move = g.last_move;
    ko_move = g.ko_move;
    g_data_size = g.g_data_size;
    n_tiles = g.n_tiles;
    max_n_strings = g.max_n_strings;
    free_strings = g.free_strings;
    black_captures = g.black_captures;
    white_captures = g.white_captures;

    if (g_data) {
        free(g_data);
    }
    g_data = g.g_data;
    tiles = g.tiles;
    strings = g.strings;
    g.g_data = nullptr;
    g.tiles = nullptr;
    g.strings = nullptr;

    return *this;
}

Game & Go::operator=(Game && game) {
    const Go && g = dynamic_cast<const Go &&>(game);
    return (*this) = g;
}


Go::~Go() {
    if (g_data) {
        free(g_data);
    }
}


Color Go::tile_at(coord_t x, coord_t y) const {
    board_idx_t idx = to_idx(x, y);
    const Tile & t = tiles[idx];
    return t.color();
}


std::shared_ptr<Game> Go::clone() const {
    return std::make_shared<Go>(*this);
}


bool Go::game_over() const {
    return this->last_move == two_passes;
}

int Go::get_score() const {
    union_find uf;
    uf_init(&uf, (this->w + 2) * (this->h + 2));

    std::unordered_map<uf_node_t, std::pair<uint16_t, uint8_t>> regs;

    for (coord_t y = 0; y < this->h; y++) {
        for (coord_t x = 0; x < this->w; x++) {
            board_idx_t idx = to_idx(x, y);

            if (is_liberty(idx)) {
                uf_node_t p = uf_find(&uf, idx);

                uint16_t cnt;
                uint8_t touching;

                auto it1 = regs.find(p);
                if (it1 != regs.end()) {
                    cnt = it1->second.first;
                    touching = it1->second.second;
                    regs.erase(it1);
                }
                else {
                    cnt = 1;
                    touching = 0;
                }
                board_idx_t n;

                FOR_EACH_ADJ(idx, n, {
                    if (is_liberty(n)) {
                        uf_node_t parent = uf_find(&uf, n);
                        if (parent != p) {
                            auto it = regs.find(parent);
                            if (it != regs.end()) {
                                cnt += it->second.first;
                                touching |= it->second.second;
                                regs.erase(it);
                            }
                            else {
                                cnt++;
                            }
                            p = uf_union(&uf, parent, p);
                        }
                    }
                    else if (is_stone(n)) {
                        touching |= (uint8_t) tiles[n].color();
                    }
                });

                regs.insert({ p, { cnt, touching } });
            }
        }
    }

    int score = black_captures - white_captures;

    for (auto it = regs.begin(); it != regs.end(); it++) {
        /*printw("%s -> (%u, %u)\n", idx_str(it->first).c_str(),
                it->second.first, it->second.second);*/
        uint16_t cnt = it->second.first;
        uint8_t mask = it->second.second;
        score += (mask == Color::black) ? cnt :
            ((mask == Color::white) ? -cnt : 0);
    }

    uf_destroy(&uf);
    return score;
}

bool Go::max_player() const {
    // black (first player) is maximizing player
    return (turn & 1) == 0;
}

bool Go::is_current() const {
    return true;
}

void Go::play(GameMove & m) {
    GoMove & gm = dynamic_cast<GoMove &>(m);
    board_idx_t idx = to_idx(gm.x, gm.y);

    speak("Playing move at %s\n", idx_str(idx).c_str());
    GO_ASSERT(!game_over(), "the game is already over, cannot play "
            "another move");
    if (gm.color != pass) {
        GO_ASSERT(!is_stone(idx), "%s is already occupied",
                idx_str(idx).c_str());
        GO_ASSERT(!move_is_suicide(idx, gm.color), "move %s is suicidal",
                idx_str(idx).c_str());
        GO_ASSERT(gm.x < this->w && gm.y < this->h, "move is out of bounds");
        GO_ASSERT((turn & 1) ? (gm.color == Color::white) :
                 (gm.color == Color::black),
                "tried playing %s on turn %u",
                (gm.color == white ? "white" :
                 gm.color == black ? "black" : "no color"),
                this->turn);
        GO_ASSERT(idx != ko_move, "illegal ko move at %s",
                idx_str(idx).c_str());
    }

    if (gm.color == pass) {
        // pass
        this->last_move = last_move == one_pass ? two_passes : one_pass;
    }
    else {
        this->_do_play(idx, gm.color);
        this->last_move = idx;
    }
    this->turn++;
}

void Go::undo() {
    GO_ASSERT(false, "undo not implemented");
}

void Go::redo() {
    GO_ASSERT(false, "redo not implemented");
}

void Go::for_each_legal_move(std::function<bool(Game &, GameMove &)> f) {
    GoMove m;

    if (game_over()) {
        // cannot play once the game has ended
        return;
    }

    m.color = max_player() ? Color::black : Color::white;

    coord_t w = this->w;
    coord_t h = this->h;
    for (coord_t y = 0; y < h; y++) {
        for (coord_t x = 0; x < w; x++) {
            board_idx_t idx = to_idx(x, y);
            if (is_liberty(idx) && !move_is_suicide(idx, m.color) &&
                    idx != this->ko_move) {
                m.x = x;
                m.y = y;
                if (!f(*this, m)) {
                    return;
                }
            }
        }
    }

    // pass
    m.color = Color::pass;
    f(*this, m);
}


uint32_t Go::print_width() const {
    uint32_t idx_w = util::log10(this->h);
    return (1 + max_piece_print_width) * this->w + idx_w + 2;
}


void Go::print_named(std::ostream & o,
        const std::string & p1_name,
        const std::string & p2_name) const {
    this->_print(o, p1_name, p2_name);
}


void Go::print(std::ostream & o) const {
    this->_print(o, default_p1_name, default_p2_name);
}

void Go::print_libs(std::ostream & o) const {
    this->_print_dbg(o,
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
    this->_print_dbg(o,
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

void Go::print_tile_idx(std::ostream & o) const {
    this->_print_dbg(o,
            [&](int r, int c) -> const char * {
                static char buf[4];

                snprintf(buf, sizeof(buf), "%3u", to_idx(c, r));
                return buf;
            }, 3);
}



void Go::consistency_check() const {

    // check to make sure border is all gray
    board_idx_t idx = 0;
    // top row
    while (idx < this->w + 2) {
        GO_ASSERT(tiles[idx].color() == Color::gray, "border is not gray");
        idx++;
    }
    // two columns
    while (idx < this->n_tiles - this->w) {
        GO_ASSERT(tiles[idx].color() == Color::gray, "border is not gray");
        idx += this->w + 1;
        GO_ASSERT(tiles[idx].color() == Color::gray, "border is not gray");
        idx++;
    }
    // bottom row
    while (idx < this->n_tiles) {
        GO_ASSERT(tiles[idx].color() == Color::gray, "border is not gray");
        idx++;
    }


    // create map from string index to all children
    std::multimap<uint32_t, board_idx_t> strs;
    for (int r = 0; r < this->h; r++) {
        for (int c = 0; c < this->w; c++) {
            board_idx_t idx = to_idx(c, r);
            if (is_stone(idx)) {
                strs.insert({ tiles[idx].string_idx(), idx });
            }
        }
    }

    std::set<uint32_t> free_strs;
    for (uint32_t str_idx = free_strings; str_idx != TileString::no_string;
            str_idx = strings[str_idx].next_free) {
        free_strs.insert(str_idx);
    }
    uint32_t ref_cnt = 0;
    // check for early frees/memory leaks in the strings
    for (auto it = strs.begin(); it != strs.end();
            it = strs.upper_bound(it->first)) {

        GO_ASSERT(free_strs.find(it->first) == free_strs.end(), "free string "
                "%u is still referenced by %s", it->first,
                idx_str(it->second).c_str());

        ref_cnt++;
    }
    GO_ASSERT(free_strs.size() + ref_cnt == max_n_strings, "string memory "
            "leak");

    // check to make sure all adjacent segments are in the same strings
    for (int r = 0; r < this->h; r++) {
        for (int c = 0; c < this->w; c++) {
            board_idx_t idx = to_idx(c, r);
            Color col = tiles[idx].color();
            uint32_t str_idx = tiles[idx].string_idx();

            board_idx_t n;
            n = idx_up(idx);
            GO_ASSERT(!is_stone(n) || tiles[n].color() != col ||
                    tiles[n].string_idx() == str_idx,
                    "stone at %s is in a different string than stone at %s",
                    idx_str(n).c_str(), idx_str(idx).c_str());
            n = idx_left(idx);
            GO_ASSERT(!is_stone(n) || tiles[n].color() != col ||
                    tiles[n].string_idx() == str_idx,
                    "stone at %s is in a different string than stone at %s",
                    idx_str(n).c_str(), idx_str(idx).c_str());
            n = idx_right(idx);
            GO_ASSERT(!is_stone(n) || tiles[n].color() != col ||
                    tiles[n].string_idx() == str_idx,
                    "stone at %s is in a different string than stone at %s",
                    idx_str(n).c_str(), idx_str(idx).c_str());
            n = idx_down(idx);
            GO_ASSERT(!is_stone(n) || tiles[n].color() != col ||
                    tiles[n].string_idx() == str_idx,
                    "stone at %s is in a different string than stone at %s",
                    idx_str(n).c_str(), idx_str(idx).c_str());
        }
    }

    // check liberty count, size, and completeness of each string
    for (auto it = strs.begin(); it != strs.end();) {
        uint32_t str_idx = it->first;
        const TileString & s = strings[str_idx];

        auto next_it = strs.upper_bound(it->first);
        std::set<board_idx_t> str_tiles;
        while (it != next_it) {
            str_tiles.insert(it->second);
            GO_ASSERT(tiles[it->second].string_idx() == str_idx,
                    "tile at %s contained in list for string %d, but is "
                    "marked as in string %d", idx_str(it->second).c_str(),
                    str_idx, tiles[it->second].string_idx());
            it++;
        }

        GO_ASSERT(s.size == str_tiles.size(), "string of size %zu is marked "
                "as size %u", str_tiles.size(), s.size);

        GO_ASSERT(s.liberties > 0, "string %u has 0 liberties", str_idx);

        // manually find all liberties while checking that the tile list is
        // complete and correctly ordered
        std::set<board_idx_t> libs;
        board_idx_t tile = strings[str_idx].first_tile;
        auto tile_it = str_tiles.begin();
        board_idx_t prev_tile = *str_tiles.rbegin();
        do {
            GO_ASSERT(str_tiles.find(tile) != str_tiles.end(),
                    "tile at %s is not in the list for string %d",
                    idx_str(tile).c_str(), str_idx);
            GO_ASSERT(tile == *tile_it, "tile %s was not found in the tile "
                    "list", idx_str(tile).c_str());
            GO_ASSERT(tiles[tile].prev_tile == prev_tile, "prev_tile of %s "
                    "was not %s", idx_str(tile).c_str(),
                    idx_str(prev_tile).c_str());

            board_idx_t n;
            n = idx_up(tile);
            if (is_liberty(n)) {
                libs.insert(n);
            }
            n = idx_left(tile);
            if (is_liberty(n)) {
                libs.insert(n);
            }
            n = idx_right(tile);
            if (is_liberty(n)) {
                libs.insert(n);
            }
            n = idx_down(tile);
            if (is_liberty(n)) {
                libs.insert(n);
            }

            prev_tile = tile;
            tile_it++;
            tile = tiles[tile].next_tile;
        } while (tile != strings[str_idx].first_tile);
        GO_ASSERT(tile_it == str_tiles.end(), "tile %s was not found in the "
                "tile list", idx_str(*tile_it).c_str());

        GO_ASSERT(s.liberties == libs.size(), "string with %zu liberties "
                "is marked as having %u liberties", libs.size(), s.liberties);

        // check if s's liberties are in sorted order
        if (s.liberties <= TileString::tracked_liberties) {
            auto it = libs.cbegin();
            for (size_t i = 0; i < s.liberties; i++) {
                GO_ASSERT(*it == s.liberty_list[i], "string %d contains "
                        "incorrect/unsorted list of liberties", str_idx);
                it++;
            }
        }
    }
}


