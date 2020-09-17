#pragma once

#include <limits>
#include <unordered_map>

#include <game_state.h>
#include <move_gen.h>


class AlphaBetaMove : public MoveGen {
    friend bool _play(Game &, GameMove & m, Game & g,
            int & alpha, int & beta, int & best_val, int depth,
            uint32_t res_mask, GameMove * move, uint64_t & cnt);
private:

    static constexpr int inf_depth = -1;
    static constexpr int min_int = std::numeric_limits<int>::min();
    static constexpr int max_int = std::numeric_limits<int>::max();

    std::unordered_map<GameState, int, GameStateHash> cache;

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

