
#include <functional>

/*
 * to be overridden by the individual game move objects
 */
class GameMove {
};


class Game {
public:

    virtual ~Game();

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
     * undoes the given move, which must have been the last move played
     */
    virtual void undo(GameMove & m) = 0;

    /*
     * iterates over legal moves in current game state, calling f with arguments
     * (game state reference, move)
     */
    virtual void for_each_legal_move(std::function<void(Game &, GameMove &)> f) = 0;

};

