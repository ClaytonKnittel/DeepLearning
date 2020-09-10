#pragma once

#include <functional>
#include <memory>


static constexpr const size_t runtime_err_buf_size = 1024;
static char runtime_err_buf[runtime_err_buf_size];

#define VA_ARGS(...) , ##__VA_ARGS__
#define GO_ASSERT(expr, msg, ...) \
    if (__builtin_expect(!(expr), 0)) { \
        snprintf(runtime_err_buf, runtime_err_buf_size, msg \
                VA_ARGS(__VA_ARGS__)); \
        throw std::runtime_error(runtime_err_buf); \
    }

/*
 * to be overridden by the individual game move objects
 */
class GameMove {
public:

    virtual ~GameMove() = default;

    virtual GameMove & operator=(GameMove & move) = 0;
};


typedef uint16_t board_idx_t;
typedef uint8_t coord_t;


class Game {
public:

    virtual ~Game() = default;


    /*
     * copy assignment
     */
    virtual Game & operator=(const Game & g) = 0;

    /*
     * move assignment
     */
    virtual Game & operator=(Game && g) = 0;


    /*
     * returns the width of the playable area
     */
    virtual coord_t width() const = 0;

    /*
     * returns the height of the playable area
     */
    virtual coord_t height() const = 0;

    /*
     * returns the current turn number
     */
    virtual uint16_t get_turn() const = 0;

    /*
     * makes a clone of the game and returns a shared pointer
     * to it
     */
    virtual std::shared_ptr<Game> clone() const = 0;

    /*
     * returns true if the game is over, false otherwise
     */
    virtual bool game_over() const = 0;

    /*
     * gives the score of the game (+ numbers are in max_player's favor,
     * - are in min_player's, 0 is tied)
     */
    virtual int get_score() const = 0;

    /*
     * returns true if max player is currently playing, false otherwise
     */
    virtual bool max_player() const = 0;

    /*
     * returns true if the game is in its most current state, i.e. a call to
     * redo would fail
     */
    virtual bool is_current() const = 0;

    /*
     * plays the given move, updating the game state accordingly
     */
    virtual void play(GameMove & m) = 0;

    /*
     * undoes the last move
     */
    virtual void undo() = 0;

    /*
     * redoes the last undone move
     */
    virtual void redo() = 0;

    /*
     * iterates over legal moves in current game state, calling f with arguments
     * (game state reference, move)
     *
     * if f returns false, then iteration is terminated
     */
    virtual void for_each_legal_move(std::function<bool(Game &, GameMove &)> f) = 0;


    /*
     * prints the game state with the two players as named
     */
    virtual void print_named(std::ostream &,
            const std::string & p1_name,
            const std::string & p2_name) const = 0;

    /*
     * prints the game state to the given output stream
     */
    virtual void print(std::ostream &) const = 0;

    /*
     * performs a consistency check on the Go state, throwing an exception
     * upon failure
     */
    virtual void consistency_check() const = 0;

};


static std::ostream & operator<<(std::ostream & o, const Game & game) {
    game.print(o);
    return o;
}

