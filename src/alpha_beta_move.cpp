
#include <memory>

#include <alpha_beta_move.h>
#include <game_with_info.h>


bool _play(Game &, GameMove & m, Game & g, int & alpha, int & beta,
        int & best_val, int & depth, uint32_t & res_mask, GameMove * move,
        uint64_t & cnt) {
    g.play(m);

    int res = AlphaBetaMove::move_search(g, ~beta, ~alpha, depth - 1, nullptr, cnt);

    // res = ~res if min_player
    res = res ^ res_mask;

    if (res > best_val) {
        alpha = std::max(alpha, res);
        best_val = res;
        if (move != nullptr) {
            *move = m;
        }
    }

    g.undo();

    // stop iterating once alpha >= beta
    return alpha < beta;
}


int AlphaBetaMove::move_search(Game & g, int alpha, int beta, int depth, GameMove * move, uint64_t & cnt) {
    if (depth == 0 || g.game_over()) {
        // we have reached the limits of our search
        cnt++;
        return g.get_score();
    }

    // 0xffffffff if min_player, else 0
    uint32_t res_mask = ((uint32_t) g.max_player()) - 1;

    int best_val = min_int;

    Go & go = dynamic_cast<Go &>(g.strip());
    go.for_each_legal_move_inline<bool(Game &, GameMove &, Game &, int &,
            int &, int &, int &, uint32_t &, GameMove *, uint64_t &), Game &,
        int &, int &, int &, int &, uint32_t &, GameMove *, uint64_t &>
            (_play, g, alpha, beta, best_val, depth, res_mask, move, cnt);

    return best_val ^ res_mask;
}

/*
int AlphaBetaMove::move_search(Game & g, int alpha, int beta, int depth, GameMove * move, uint64_t & cnt) {
    if (depth == 0 || g.game_over()) {
        // we have reached the limits of our search
        cnt++;
        return g.get_score();
    }

    bool min_player = !g.max_player();
    // 0xffffffff if min_player, else 0
    uint32_t res_mask = ((uint32_t) !min_player) - 1;

    int best_val = min_int;

    g.for_each_legal_move([&](Game &, GameMove & m) -> bool {
        g.play(m);

        int res = move_search(g, -beta, -alpha, depth - 1, nullptr, cnt);

        // res = -res if min_player
        res = (res ^ res_mask) + min_player;

        if (res > best_val) {
            alpha = std::max(alpha, res);
            best_val = res;
            if (move != nullptr) {
                *move = m;
            }
        }

        g.undo();

        // stop iterating once alpha >= beta
        return alpha < beta;
    });

    return (best_val ^ res_mask) + min_player;
}*/

#include <unistd.h>

MoveStatus AlphaBetaMove::next_move(GameMove & move) {

    if (game.game_over()) {
        getch();
        return failed;
    }

    GameState state(dynamic_cast<Go &>(game.strip()));
    state.print();

    std::shared_ptr<Game> game_clone = game.clone();

    uint64_t cnt = 0;
    move_search(*game_clone, min_int, max_int, max_depth, &move, cnt);

    printf("Explored %llu game states\n", cnt);

    GoMove mv = dynamic_cast<GoMove &>(move);
    /*printf("\r\nMove: %s (%u, %u)\r\n", mv.color == black ? "black" :
            mv.color == white ? "white" : "pass", mv.x, mv.y);*/

    //usleep(1000000);

    return ok;
}


