#pragma once

#include <functional>

/*
 * to be overridden by the individual game move objects
 */
class GameMove {
public:

    virtual ~GameMove() = default;
};


class Game {
public:

    virtual ~Game() = default;

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
     * plays the given move, updating the game state accordingly
     */
    virtual void play(GameMove & m) = 0;

    /*
     * undoes the last move
     */
    virtual void undo() = 0;

    /*
     * iterates over legal moves in current game state, calling f with arguments
     * (game state reference, move)
     */
    virtual void for_each_legal_move(std::function<void(Game &, GameMove &)> f) = 0;


    /*
     * prints the game state to the given output stream
     */
    virtual void print(std::ostream &) const = 0;

};


static std::ostream & operator<<(std::ostream & o, const Game & game) {
    game.print(o);
    return o;
}

