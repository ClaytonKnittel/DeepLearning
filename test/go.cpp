
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
#include <recorded_game.h>
#include <user_move.h>


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

    std::shared_ptr<Go> game = std::make_shared<Go>(4, 4);
    std::shared_ptr<Game> cur_game = game;

#define SAVE_FILE_SIZE 128
    char save_file[SAVE_FILE_SIZE];
    save_file[0] = '\0';

    void(*print_fn)(const Game &) = regular_print;

    bool print = true;

    std::shared_ptr<MoveGen> move_gen = nullptr;
    bool do_ai = false, do_file = false;

    int opt;
    while ((opt = getopt(argc, argv, "af:s:")) != -1) {
        switch(opt) {
            case 'a':
                do_ai = true;
                break;
            case 'f':
                do_file = true;
                break;
            case 's':
                strncpy(save_file, optarg, SAVE_FILE_SIZE);
                break;
            case '?':
            default:
                std::cout << "usage: " << argv[0] << " [-a]" <<
                   " [-f <input sgf file>]" <<
                   " [-s <output sgf file name>]" << std::endl;
                return -1;
        }
    }

    if (do_ai) {
        std::shared_ptr<GameWithHistory> gh =
            std::make_shared<GameWithHistory>(cur_game);
        cur_game = gh;
        move_gen = std::make_shared<AlphaBetaMove>(*cur_game, 11);
    }
    else if (do_file) {
        move_gen = std::make_shared<FileMove>(optarg, *cur_game);
    }
    else {
        move_gen = std::make_shared<UserMove>(*cur_game);
    }

    std::shared_ptr<RecordedGame> rg = nullptr;
    if (save_file[0] != '\0') {
        rg = std::make_shared<RecordedGame>(cur_game);
        cur_game = rg;
    }

#ifdef DO_CURSES
    GameWithInfo g(cur_game);
#else
    Game & g = *cur_game;
#endif
    g.consistency_check();


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

    if (save_file[0] != '\0') {
        rg->save_game(save_file);
    }

    return 0;
}

#ifdef DO_CURSES
#undef printf
#endif

