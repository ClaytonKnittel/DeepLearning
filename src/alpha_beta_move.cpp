
#include <memory>

#include <alpha_beta_move.h>
#include <game_with_info.h>


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
}

#include <unistd.h>

MoveStatus AlphaBetaMove::next_move(GameMove & move) {

    if (game.game_over()) {
        getch();
        return failed;
    }
    game.consistency_check();

    GameState state(dynamic_cast<Go &>(game.strip()));
    state.print();

    std::shared_ptr<Game> game_clone = game.clone();

    game.consistency_check();
    game_clone->consistency_check();

    uint64_t cnt = 0;
    move_search(*game_clone, min_int, max_int, max_depth, &move, cnt);

    printf("Explored %llu game states\n", cnt);
    game_clone->consistency_check();

    GoMove mv = dynamic_cast<GoMove &>(move);
    /*printf("\r\nMove: %s (%u, %u)\r\n", mv.color == black ? "black" :
            mv.color == white ? "white" : "pass", mv.x, mv.y);*/

    //usleep(1000000);

    return ok;
}


