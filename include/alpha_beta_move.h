#pragma once

#include <limits>

#include <move_gen.h>


class AlphaBetaMove : public MoveGen {
private:

    static constexpr const int inf_depth = -1;
    static constexpr const int min_int =
        std::numeric_limits<int>::min() + 1;
    static constexpr const int max_int = std::numeric_limits<int>::max();

    Game & game;
    // maximum number of moves deep we will search
    int max_depth;


    static int move_search(Game & g, int alpha, int beta, int depth,
            GameMove * move, uint64_t & cnt);

public:

    AlphaBetaMove(Game & game, int max_depth=inf_depth) : game(game),
            max_depth(max_depth) {}

    virtual ~AlphaBetaMove() = default;

    virtual MoveStatus next_move(GameMove &);
};

