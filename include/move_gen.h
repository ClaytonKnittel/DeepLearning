#pragma once

#include <game.h>
#include <go.h>


enum MoveStatus {
    ok,
    retry,
    failed
};

class MoveGen {
public:

    virtual ~MoveGen() = default;

    // generates the next move to be played, populating the supplied reference
    // to a GameMove struct and returning true if the operation was successful
    virtual MoveStatus next_move(GameMove &) = 0;
};


