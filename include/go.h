#pragma once

#include <string>

#include <util/util.h>

#include <game.h>


typedef uint16_t go_turn_t;
typedef uint8_t player_t;


enum Color {
    empty = 0,
    black = 0x1,
    white = 0x2,
    // gray is for the borders, which are counted as both black and white
    gray  = 0x3,
    num_states = 4,

    // not a legal color for tiles, only in the color field of GoMove
    pass = 5
};

/*
 * assuming c is either black or white, returns the other of the two
 */
static Color other_color(Color c) {
    return (Color) (3 - ((uint8_t) c));
}


class GoMove : public GameMove {
public:

    virtual ~GoMove() = default;

    GoMove & operator=(GoMove & move) {
        color = move.color;
        x = move.x;
        y = move.y;
        return *this;
    }

    virtual GameMove & operator=(GameMove & move) {
        GoMove & m = dynamic_cast<GoMove &>(move);
        return (*this = m);
    }

    Color color;
    coord_t x, y;
};



class Go : public Game {
public:

    static constexpr uint32_t tile_width = util::fls_unsafe(num_states - 1);
    static constexpr uint32_t tile_mask = ((1u) << tile_width) - 1;


    static constexpr uint64_t g_data_alignment = 128;

    static constexpr char COL_INDICATORS[] = "ABCDEFGHJKLMNOPQRSTUVWXYZ";

    // the width of a single tile when the board is printed as unicode text
    static constexpr uint32_t max_piece_print_width = 3;

    static constexpr char default_p1_name[] = "black";
    static constexpr char default_p2_name[] = "white";

private:

    static constexpr board_idx_t no_position = 0xffffu;

    // when last_move is this, that means the last move was a pass
    static constexpr board_idx_t one_pass = 0xffffu;
    // when last_move is this, that means the last two moves were
    // passes, and thus the game is over
    static constexpr board_idx_t two_passes = 0xfffeu;

    coord_t w, h;

    uint16_t turn;

    board_idx_t last_move;
    // when set, marks the position on the board that cannot be played next,
    // as it would result in the recapturing of a stone that had just captured
    // a single stone
    board_idx_t ko_move;

    size_t g_data_size;
    uint32_t n_tiles;
    uint32_t max_n_strings;
    // index of first TileString not allocated, or -1 if all are allocated
    int free_strings;

    // the number of captures black/white have made,
    // respectively
    uint32_t black_captures, white_captures;


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


protected:

    board_idx_t to_idx(coord_t x, coord_t y) const;


    board_idx_t idx_up(board_idx_t idx) const;
    board_idx_t idx_down(board_idx_t idx) const;
    board_idx_t idx_left(board_idx_t idx) const;
    board_idx_t idx_right(board_idx_t idx) const;

    /*
     * return a string representation of the tile at idx
     */
    std::string idx_str(board_idx_t idx) const;


private:

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
     * removes a string of stones from the board, setting each of the tiles
     * in the string to empty and updating the liberties of all strings that
     * were touching the string
     */
    void erase_string(uint32_t string_idx);

    /*
     * removes the stone at idx from the string's list of liberties
     *
     * idx must already be a liberty of string_idx
     */
    void remove_liberty(uint32_t string_idx, board_idx_t idx);

    /*
     * adds the empty tile at idx to the string's list of liberties
     *
     * idx must not already be a liberty of string_idx
     */
    void add_liberty(uint32_t string_idx, board_idx_t idx);


    /*
     * subtract a liberty from each of the strings adjacent to the tile at idx,
     * potentially erasing any strings of the opposite color which went to zero
     * liberties
     */
    void subtract_liberties(board_idx_t idx, Color color);

    /*
     * add a liberty to each of the strings adjacent to the tile at idx whose
     * color does not match "color"
     */
    void add_liberties(board_idx_t idx, Color color);


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
     * returns string representation of tile at given coordinates
     */
    const char * tile_repr_at(coord_t x, coord_t y) const;

    /*
     * returns string representation of tile at given coordinates to be used
     * when the tile is highlighted for any reason
     */
    const char * selected_tile_repr_at(coord_t x, coord_t y) const;

    /*
     * checks whether the move is suicidal
     */
    bool move_is_suicide(board_idx_t idx, Color color) const;

    /*
     * places a tile at idx, assuming all 4 of idx's neighbors are not the same
     * color as the stone we are placing
     *
     * returns a reference to the created TileString for this tile
     */
    TileString & place_lone_tile(board_idx_t idx, Color color);

    /*
     * unsafe version of play, does not check the legality of the move,
     * instead assuming it
     */
    void _do_play(board_idx_t idx, Color color);


    /*
     * returns true if the tile at (x, y) is a star tile (only applicable to
     * the standard board sizes, 9x9, 13x13, and 19x19)
     */
    bool is_star_tile(coord_t x, coord_t y) const;


    void _print_dbg(std::ostream &,
        const std::function<const char *(int, int)> & print_fn,
        int piece_width) const;

    void _print(std::ostream &, const std::string & p1_name,
            const std::string & p2_name) const;


protected:

    // the default constructor is only used by decorators to
    // avoid unecessary initialization of unused data
    Go();

public:

    Go(coord_t w, coord_t h);

    Go(const Go & g);

    Go(Go && g);

    Go & operator=(const Go & g);
    virtual Game & operator=(const Game & g);

    Go & operator=(Go && g);
    virtual Game & operator=(Game && g);

    virtual ~Go();


    virtual coord_t width() const {
        return w;
    }

    virtual coord_t height() const {
        return h;
    }

    virtual uint16_t get_turn() const {
        return turn;
    }

    /*
     * returns tile at given coordinates
     */
    Color tile_at(coord_t x, coord_t y) const;


    virtual Game & strip() const {
        return const_cast<Go &>(*this);
    }

    virtual std::shared_ptr<Game> clone() const;

    virtual bool game_over() const;

    virtual int get_score() const;

    virtual bool max_player() const;

    virtual bool is_current() const;

    virtual void play(GameMove & m);

    virtual void undo();

    virtual void redo();

    virtual void for_each_legal_move(std::function<bool(Game &, GameMove &)> f);

    template<typename Fn, typename... Args>
    inline void for_each_legal_move_inline(const Fn &fn, Args &...args) {
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
                    if (!fn(*this, m, std::forward<Args>(args)...)) {
                        return;
                    }
                }
            }
        }

        // pass
        m.color = Color::pass;
        fn(*this, m, std::forward<Args>(args)...);
    }


    // gives the width of the Go board when printed as unicode text
    uint32_t print_width() const;

    virtual void print_named(std::ostream &,
            const std::string & p1_name,
            const std::string & p2_name) const;

    virtual void print(std::ostream &) const;

    void print_libs(std::ostream &) const;

    void print_str_idx(std::ostream &) const;

    void print_tile_idx(std::ostream &) const;

    virtual void consistency_check() const;

};

