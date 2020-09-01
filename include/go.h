#pragma once

#include <util/util.h>

#include <game.h>


typedef uint16_t go_turn_t;
typedef uint8_t player_t;

typedef uint8_t coord_t;


typedef uint64_t go_board_bitv_t;


class GoMove : public GameMove {
public:

    virtual ~GoMove() = default;

    go_turn_t turn;
    player_t player;
    coord_t x, y;
};


enum Tile {
    empty,
    black,
    white,
    num_states
};



class Go : public Game {
private:

    static constexpr const uint32_t tile_width = util::next_pow2(util::fls_unsafe(num_states - 1));
    static constexpr const go_board_bitv_t tile_mask =
        (((go_board_bitv_t) 1) << tile_width) - 1;

    coord_t w, h;

    uint8_t board_size;
    go_board_bitv_t * board;

    /*
     * returns the number of go_board_bitv_t elements needed for this board
     */
    int get_board_size() const;

    /*
     * returns tile at given coordinates
     */
    Tile tile_at(coord_t x, coord_t y) const;

    /*
     * returns string representation of tile at given coordinates
     */
    const char * tile_repr_at(coord_t x, coord_t y) const;

    /*
     * sets the tile at (x, y) on the board to t
     */
    void set_tile_at(coord_t x, coord_t y, Tile t);


    void _play(GoMove & m);

    void _undo(GoMove & m);

public:

    Go(coord_t w, coord_t h);
    virtual ~Go();

    virtual bool game_over() const;

    virtual int get_score() const;

    virtual bool max_player() const;

    virtual void play(GameMove & m);

    virtual void undo(GameMove & m);

    virtual void for_each_legal_move(std::function<void(Game &, GameMove &)> f);


    virtual void print(std::ostream &) const;

};

