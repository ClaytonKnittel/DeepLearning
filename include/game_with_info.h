#pragma once

#include <iostream>
#include <sstream>
#include <string>
#include <curses.h>

#include <go.h>


class GameWithInfo : public Go {
private:

    std::string p1_name, p2_name;
    board_idx_t last_move;

    void print_to(const std::string & s) const {
        ::clear();
        move(0, 0);

        int cur_color = 0;

        size_t size = s.size();
        for (size_t i = 0; i < size; i++) {
            if (s[i] == '\033') {
                i += 4;
                if (i + 2 >= size) {
                    continue;
                }
                uint64_t num = strtoul(&s[i], NULL, 10);
                i += 2;
                num -= 30;
                if (num >= 10 || num == 8) {
                    continue;
                }
                switch (num) {
                    case 0:
                        // black
                        attron(COLOR_PAIR(2));
                        cur_color = 2;
                        break;
                    case 3:
                        // yellow
                        attron(COLOR_PAIR(3));
                        cur_color = 3;
                        break;
                    case 4:
                        // blue
                        attron(COLOR_PAIR(4));
                        cur_color = 4;
                        break;
                    case 7:
                        // white
                        attron(COLOR_PAIR(1));
                        cur_color = 1;
                        break;
                    case 9:
                        // default
                        assert(cur_color != 0);
                        attroff(COLOR_PAIR(cur_color));
                        cur_color = 0;
                        break;
                }
            }
            else {
                printw("%c", s[i]);
            }
        }
        refresh();
    }

public:

    template<typename ...Args>
    GameWithInfo(Args... args) : Go(args...),
            p1_name(Go::default_p1_name),
            p2_name(Go::default_p2_name), last_move(-1) {

        setlocale(LC_ALL, "");
        // initialize ncurses
        initscr();
        cbreak();
        noecho();

        use_default_colors();

        start_color();
        init_pair(1, COLOR_WHITE,  -1);
        init_pair(2, COLOR_BLACK,  -1);
        init_pair(3, COLOR_YELLOW, -1);
        init_pair(4, COLOR_BLUE,   -1);

        init_color(COLOR_YELLOW, 992, 992, 558);
        init_color(COLOR_BLUE, 537, 804, 825);
    }

    virtual ~GameWithInfo() {
        endwin();
    }

    void set_p1_name(const std::string & name) {
        p1_name = name;
    }

    void set_p2_name(const std::string & name) {
        p2_name = name;
    }

    virtual void play(GameMove & m) {
        GoMove & gm = dynamic_cast<GoMove &>(m);
        last_move = to_idx(gm.x, gm.y);
        Go::play(m);
    }

    virtual void print(std::ostream & o) const {
        std::ostringstream os;
        this->print_named(os, p1_name, p2_name, last_move);
        print_to(os.str());
    }
};


