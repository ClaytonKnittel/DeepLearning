#pragma once


#include <move_gen.h>


class UserMove : public MoveGen {
private:
    Game & game;
public:

    UserMove(Game & game) : game(game) {}

    virtual ~UserMove() = default;

    virtual MoveStatus next_move(GameMove &);
};

