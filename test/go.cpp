
#include <algorithm>
#include <getopt.h>
#include <iostream>
#include <iomanip>
#include <memory>
#include <sstream>
#include <string>
#include <curses.h>

#include <fun/print_colors.h>

#include <alpha_beta_move.h>
#include <file_move.h>
#include <game_with_history.h>
#include <game_with_info.h>
#include <go.h>
#include <user_move.h>


//#define DO_CURSES


#ifdef DO_CURSES
#define printf printw
#endif


void print_w(const std::string & s, uint32_t w) {
    size_t spec_cnt = std::count_if(s.begin(), s.end(), []( char c ){
            return (c & 0xc0) == 0x80;
        });
    size_t ansi_cnt = std::count_if(s.begin(), s.end(), []( char c ){
            return c == '\033';
        });
    std::cout << std::left << std::setw(w + spec_cnt + ansi_cnt * (sizeof(P_DEFAULT) - 1)) << s;
}

void interleave_print(const Go & g) {
    std::stringstream os1, os2, os3;
    g.print_str_idx(os1);
    g.print_libs(os2);
    g.print_tile_idx(os3);

    uint32_t w = g.print_width() + 10;
    
    std::string buf1, buf2, buf3;
    while (true) {
        std::getline(os1, buf1);
        std::getline(os2, buf2);
        std::getline(os3, buf3);
        if (!os1 && !os2 && !os3) {
            break;
        }
        print_w(buf1, w);
        print_w(buf2, w);
        std::cout << buf3 << std::endl;
    }
}

void regular_print(const Game & g) {
    std::cout << g << std::endl;
    printf("score: %d\n", g.get_score());
}

int main(int argc, char * argv[]) {

    std::shared_ptr<Go> game = std::make_shared<Go>(3, 3);
    std::shared_ptr<GameWithHistory> gh =
        std::make_shared<GameWithHistory>(game);

#ifdef DO_CURSES
    GameWithInfo g(gh);
#else
    Game & g = *gh;
#endif
    g.consistency_check();

    void(*print_fn)(const Game &) = regular_print;

    bool print = true;

    std::shared_ptr<MoveGen> move_gen = nullptr;

    int opt;
    while ((opt = getopt(argc, argv, "af:")) != -1) {
        switch(opt) {
            case 'a':
                move_gen = std::make_shared<AlphaBetaMove>(g, 1);
                break;
            case 'f':
                move_gen = std::make_shared<FileMove>(optarg, g);
                break;
            case '?':
            default:
                std::cout << "usage: " << argv[0] << " [-f <sgf file>]" << std::endl;
                return -1;
        }
    }

    if (move_gen == nullptr) {
        move_gen = std::make_shared<UserMove>(g);
    }


    while (true) {

        if (print) {
            print_fn(g);
        }
        print = true;
        bool again = false, game_over = false, undoes = false;;

        g.consistency_check();

        GoMove m;
        switch (move_gen->next_move(m)) {
            case ok:
                break;
            case retry:
                print = false;
                again = true;
                break;
            case failed:
                game_over = true;
                break;
            case undo:
                undoes = true;
                break;
        }

        if (again) continue;
        if (game_over) break;

        try {
            if (undoes) {
                g.undo();
            }
            else if (!g.is_current()) {
                g.redo();
            }
            else {
                g.play(m);
            }
            g.consistency_check();
        } catch (const std::runtime_error & e) {
            print_fn(g);
            attron(COLOR_PAIR(5));
            printf("%s\n", e.what());
            attroff(COLOR_PAIR(5));
            refresh();
            getch();
            break;
        }
    }

    return 0;
}

#ifdef DO_CURSES
#undef printf
#endif

