#pragma once

#include <ctime>

#include <fstream>
#include <string>
#include <vector>

#include <game.h>
#include <go.h>

class RecordedGame : public Game {
private:

    static constexpr board_idx_t pass = 0xffffu;

    std::shared_ptr<Game> parent;

    std::vector<board_idx_t> history;

public:

    RecordedGame(std::shared_ptr<Game> parent) : parent(parent) {
    }

    RecordedGame(const RecordedGame & g) : parent(g.parent->clone()),
            history(g.history) {
    }

    virtual Game & operator=(const Game & g) {
        return (*parent) = g;
    }

    virtual Game & operator=(Game && g) {
        return (*parent) = g;
    }

    virtual ~RecordedGame() {}

    virtual Game & strip() const {
        return parent->strip();
    }


    int save_game(const std::string & file_name) const {
        // save this game to a file in sgf format
        std::ofstream f(file_name);

        time_t cur_time = time(NULL);
        struct tm *t = localtime(&cur_time);

#define ZERO_FILL(n) std::setfill('0') << std::setw((n))

        f << "(;\nEV[Game on Clayton's computer]\nPB[AI]\nPW[AI]\n"
            "DT[" << ZERO_FILL(2) << t->tm_mon + 1 << "/" <<
            ZERO_FILL(2) << t->tm_mday << "/" << t->tm_year <<
            " " << ZERO_FILL(2) << t->tm_hour << ":" <<
            ZERO_FILL(2) << t->tm_min << ":" <<
            ZERO_FILL(2) << t->tm_sec << "]\n\n";

        // iterate through moves, starting with black
        int player = (int) Color::black;

        for (auto it = history.begin(); it != history.end(); it++) {
            board_idx_t idx = *it;
            if (idx != pass) {
                board_idx_t w = width();
                int8_t y_idx = idx / w;
                int8_t x_idx = idx % w;
                f << ';' << (player == Color::black ? 'B' : 'W') <<
                    '[' << (char) ('a' + x_idx) << (char) ('a' + y_idx) << ']';
            }
            else {
                f << ';' << (player == Color::black ? 'B' : 'W') << "[]";
            }
            player = (int) other_color((Color) player);
        }
        f << ')' << std::flush;

        return 0;
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
        return std::make_shared<RecordedGame>(*this);
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
        GoMove & g = dynamic_cast<GoMove &>(m);
        board_idx_t idx;
        if (g.color == Color::pass) {
            idx = pass;
        }
        else {
            idx = g.x + g.y * width();
        }
        history.push_back(idx);
        parent->play(m);
    }

    virtual void undo() {
        history.pop_back();
        parent->undo();
    }

    virtual void redo() {
        GO_ASSERT(0, "redo not impelemented");
        //parent->redo();
    }

    virtual void for_each_legal_move(std::function<bool(Game &, GameMove &)> f) {
        parent->for_each_legal_move(f);
    }

    virtual void print_named(std::ostream & o,
            const std::string & p1_name,
            const std::string & p2_name) const {
        parent->print_named(o, p1_name, p2_name);
    }

    virtual void print(std::ostream & o) const {
        parent->print(o);
    }

    virtual void consistency_check() const {
        parent->consistency_check();
    }

};

