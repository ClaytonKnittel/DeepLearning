
#include <algorithm>
#include <getopt.h>
#include <iostream>
#include <iomanip>
#include <memory>
#include <sstream>
#include <string>

#include <fun/print_colors.h>

#include <file_move.h>
#include <game_with_info.h>
#include <go.h>
#include <user_move.h>


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

void regular_print(const Go & g) {
    std::cout << g << std::endl;
}

int main(int argc, char * argv[]) {

    GameWithInfo g(19, 19);

    void(*print_fn)(const Go &) = regular_print;

    bool print = true;

    std::shared_ptr<MoveGen> move_gen = nullptr;

    int opt;
    while ((opt = getopt(argc, argv, "f:")) != -1) {
        switch(opt) {
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
        bool again = false, game_over = false;

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
        }

        if (again) continue;
        if (game_over) break;

        try {
            g.play(m);
            g.consistency_check();
        } catch (const std::runtime_error & e) {
            print_fn(g);
            std::cerr << P_RED << e.what() << P_DEFAULT << std::endl;
            break;
        }
    }

    return 0;
}

