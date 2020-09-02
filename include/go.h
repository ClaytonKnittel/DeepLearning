#pragma once

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

    go_turn_t turn;
    Color color;
    coord_t x, y;
};



class Go : public Game {
public:

    static constexpr const uint32_t tile_width = util::fls_unsafe(num_states - 1);
    static constexpr const uint32_t tile_mask = ((1u) << tile_width) - 1;


    static constexpr const uint64_t g_data_alignment = 128;

private:

    coord_t w, h;

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
     * returns true if the color at idx can be treated as "color" (either
     * is equal to color, or is gray)
     */
    bool color_matches(board_idx_t idx, Color color) const;

    /*
     * returns true only if the color at idx is equal to color
     */
    bool color_equals(board_idx_t idx, Color color) const;


    /*
     * returns the size of the string at idx
     */
    int string_size(board_idx_t idx) const;

    /*
     * returns the number of neighbors the string at idx has
     */
    int num_neighbors(board_idx_t idx) const;

    /*
     * returns the number of liberties in the string at idx
     */
    int num_liberties(board_idx_t idx) const;


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
     * sets the tile at (x, y) on the board to t
     */
    void set_tile_at(coord_t x, coord_t y, Color t);


    /*
     * checks whether the move is suicidal
     */
    bool move_is_suicide(board_idx_t idx, Color color) const;

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

public:

    Go(coord_t w, coord_t h);

    Go(const Go & g);

    Go(Go && g) = default;

    virtual ~Go();

    virtual bool game_over() const;

    virtual int get_score() const;

    virtual bool max_player() const;

    virtual void play(GameMove & m);

    virtual void undo(GameMove & m);

    virtual void for_each_legal_move(std::function<void(Game &, GameMove &)> f);


    virtual void print(std::ostream &) const;

};

