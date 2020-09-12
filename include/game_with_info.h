#pragma once

#include <cassert>
#include <iostream>
#include <memory>
#include <sstream>
#include <string>
#include <curses.h>

#include <go.h>


class GameWithInfo : public Game {
private:

    std::shared_ptr<Game> parent;

    std::string p1_name, p2_name;

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

    GameWithInfo(std::shared_ptr<Game> parent) : parent(parent),
            p1_name(Go::default_p1_name),
            p2_name(Go::default_p2_name) {

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
        init_pair(5, COLOR_RED,    -1);

        init_color(COLOR_YELLOW, 992, 992, 558);
        init_color(COLOR_BLUE, 537, 804, 825);
    }

    GameWithInfo(const GameWithInfo & g) : parent(parent->clone()),
            p1_name(g.p1_name), p2_name(g.p2_name) {
    }

    virtual Game & operator=(const Game & g) {
        return (*parent) = g;
    }

    virtual Game & operator=(Game && g) {
        return (*parent) = g;
    }

    virtual ~GameWithInfo() {
        endwin();
    }

    virtual Game & strip() {
        return parent->strip();
    }

    void set_p1_name(const std::string & name) {
        p1_name = name;
    }

    void set_p2_name(const std::string & name) {
        p2_name = name;
    }

    virtual void print(std::ostream & o) const {
        std::ostringstream os;
        parent->print_named(os, p1_name, p2_name);
        print_to(os.str());
    }


    virtual coord_t width() const {
        return parent->width();
    }

    virtual coord_t height() const {
        return parent->height();
    }

    virtual uint16_t get_turn() const {
        return parent->get_turn();
    }

    virtual std::shared_ptr<Game> clone() const {
        return parent->clone();
    }

    virtual bool game_over() const {
        return parent->game_over();
    }

    virtual int get_score() const {
        return parent->get_score();
    }

    virtual bool max_player() const {
        return parent->max_player();
    }

    virtual bool is_current() const {
        return parent->is_current();
    }

    virtual void play(GameMove & m) {
        parent->play(m);
    }

    virtual void undo() {
        parent->undo();
    }

    virtual void redo() {
        parent->redo();
    }

    virtual void for_each_legal_move(std::function<bool(Game &, GameMove &)> f) {
        parent->for_each_legal_move(f);
    }

    virtual void print_named(std::ostream & o,
            const std::string & p1_name,
            const std::string & p2_name) const {
        parent->print_named(o, p1_name, p2_name);
    }

    virtual void consistency_check() const {
        parent->consistency_check();
    }

};


