#pragma once

#include <string>

#include <util/util.h>

#include <game.h>


typedef uint16_t go_turn_t;
typedef uint8_t player_t;

typedef uint16_t board_idx_t;
typedef uint8_t coord_t;


enum Color {
    empty = 0,
    black = 0x1,
    white = 0x2,
    // gray is for the borders, which are counted as both black and white
    gray  = 0x3,
    num_states = 4
};


class GoMove : public GameMove {
public:

    virtual ~GoMove() = default;

    Color color;
    coord_t x, y;

    std::string to_string() const;
};



class Go : public Game {
public:

    static constexpr const uint32_t tile_width = util::fls_unsafe(num_states - 1);
    static constexpr const uint32_t tile_mask = ((1u) << tile_width) - 1;


    static constexpr const uint64_t g_data_alignment = 128;

private:

    coord_t w, h;

    uint16_t turn;

    size_t g_data_size;
    uint32_t n_tiles;
    uint32_t max_n_strings;
    // index of first TileString not allocated, or -1 if all are allocated
    int free_strings;


    /*
     * pointer to allocated memory region for g_data (in place of aligned_alloc)
     */
    void * g_data;
    /*
     * array of tiles on the board
     */
    struct Tile * tiles;

    /*
     * list of strings of tiles
     */
    struct TileString * strings;


    board_idx_t to_idx(coord_t x, coord_t y) const;


    board_idx_t idx_up(board_idx_t idx) const;
    board_idx_t idx_down(board_idx_t idx) const;
    board_idx_t idx_left(board_idx_t idx) const;
    board_idx_t idx_right(board_idx_t idx) const;

    /*
     * return a string representation of the tile at idx
     */
    std::string idx_str(board_idx_t idx) const;


    /*
     * returns true if the color at idx can be treated as "color" (either
     * is equal to color, or is gray)
     */
    bool color_matches(board_idx_t idx, Color color) const;

    /*
     * returns true only if the color at idx is equal to color
     */
    bool color_equals(board_idx_t idx, Color color) const;

    /*
     * returns true iff the tile at idx is a liberty (i.e. is empty)
     */
    bool is_liberty(board_idx_t idx) const;

    /*
     * returns true iff the tile at idx is either a white or black stone
     */
    bool is_stone(board_idx_t idx) const;

    /*
     * mark a free tile as "seen", must later be undone to return the board
     * to the correct state
     */
    void mark_free_tile(board_idx_t idx);

    /*
     * inverse of mark_free_tile
     */
    void unmark_free_tile(board_idx_t idx);

    /*
     * returns true if the given tile was marked, or undefined behavior when
     * called on a tile that is not empty
     */
    bool is_marked(board_idx_t idx) const;


    /*
     * returns the size of the string at idx
     */
    int string_size(board_idx_t idx) const;

    /*
     * returns the number of liberties in the string at idx
     */
    int num_liberties(board_idx_t idx) const;

    /*
     * count the number of liberties around the tile at idx, without
     * consideration of the group the stone at idx may be tied to (i.e. this
     * returns a number 0-4, counting only the number of empty tiles
     * immediately around this tile)
     */
    int count_adj_liberties(board_idx_t idx) const;


    /*
     * calculates max_n_strings, to be called on initialization
     */
    uint32_t calc_max_n_strings() const;

    /*
     * initializes TileStrings heap
     */
    void init_strings();

    /*
     * allocates string from freelist and returns its index
     */
    uint32_t alloc_string();

    /*
     * frees a string struct back to the freelist
     */
    void free_string(uint32_t string_ident);


    /*
     * merges the two liberty lists l1 and l2 into dst, returning the total
     * number of unique liberties between the two lists
     */
    static uint32_t liberty_list_merge(board_idx_t * dst, uint32_t dst_len,
            board_idx_t * l1, uint32_t l1_len,
            board_idx_t * l2, uint32_t l2_len);


    /*
     * calculates all metainformation of the string from scratch
     */
    void recompute_string(uint32_t string_idx);


    /*
     * appends the tile at idx to the given string
     */
    void append_string(board_idx_t idx, Color color, uint32_t string_idx);

    /*
     * joins the two given strings into s1
     */
    void join_strings(uint32_t s1, uint32_t s2);

    /*
     * merge all strings adjacent to this tile which are the color "color"
     * into the string "string_idx", and set the tile at idx to "color"
     */
    void merge_strings_around(board_idx_t idx, Color color,
            uint32_t string_idx);


    /*
     * to be called on initialization, after g_data has been allocated, to
     * assign tiles and strings respective portions of the total memory in g_data
     */
    void __assign_memory();


    /*
     * clears the board, resetting the state
     */
    void clear();

    /*
     * returns tile at given coordinates
     */
    Color tile_at(coord_t x, coord_t y) const;

    /*
     * returns string representation of tile at given coordinates
     */
    const char * tile_repr_at(coord_t x, coord_t y) const;

    /*
     * checks whether the move is suicidal
     */
    bool move_is_suicide(board_idx_t idx, Color color) const;

    /*
     * places a tile at idx, assuming all 4 of idx's neighbors are not the same
     * color as the stone we are placing
     */
    void place_lone_tile(board_idx_t idx, Color color);

    /*
     * unsafe version of play, does not check the legality of the move,
     * instead assuming it
     */
    void _do_play(board_idx_t idx, Color color);

    /*
     * undoes the last move, returning the game state to the previous
     * configuration
     */
    void _do_undo();


    void _print(std::ostream &,
        const std::function<const char *(int, int)> & print_fn,
        int piece_width) const;

public:

    Go(coord_t w, coord_t h);

    Go(const Go & g);

    Go(Go && g) = default;

    virtual ~Go();

    coord_t width() const {
        return w;
    }

    coord_t height() const {
        return h;
    }

    uint16_t get_turn() const {
        return turn;
    }


    virtual bool game_over() const;

    virtual int get_score() const;

    virtual bool max_player() const;

    virtual void play(GameMove & m);

    virtual void undo(GameMove & m);

    virtual void for_each_legal_move(std::function<void(Game &, GameMove &)> f);


    virtual void print(std::ostream &) const;

    void print_libs(std::ostream &) const;

    void print_str_idx(std::ostream &) const;


    /*
     * performs a consistency check on the Go state, throwing an exception
     * upon failure
     */
    void consistency_check() const;

};

