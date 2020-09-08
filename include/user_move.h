#pragma once


#include <move_gen.h>


class UserMove : public MoveGen {
private:
    Go & game;
public:

    UserMove(Go & game) : game(game) {}

    virtual ~UserMove() = default;

    virtual MoveStatus next_move(GameMove &);
};

