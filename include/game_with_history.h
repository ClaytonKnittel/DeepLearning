#pragma once

#include <memory>
#include <vector>

#include <game.h>

class GameWithHistory : public Game {
private:

    std::shared_ptr<Game> parent;

    size_t h_idx;
    std::vector<std::shared_ptr<Game>> history;

public:

    GameWithHistory(std::shared_ptr<Game> parent) : parent(parent),
            h_idx(0) {
        history.push_back(parent->clone());
    }

    GameWithHistory(const GameWithHistory & g) : parent(g.parent->clone()), 
            h_idx(g.h_idx), history(g.history) {
    }

    virtual Game & operator=(const Game & g) {
        return (*parent) = g;
    }

    virtual Game & operator=(Game && g) {
        return (*parent) = g;
    }

    virtual ~GameWithHistory() {}

    virtual Game & strip() {
        return parent->strip();
    }


    virtual bool is_current() const {
        return h_idx + 1 == history.size();
    }

    virtual void play(GameMove & m) {
        parent->play(m);
        history.resize(h_idx + 1);
        h_idx++;
        history.push_back(parent->clone());
    }

    virtual void undo() {
        if (h_idx > 0) {
            h_idx--;
            *this->parent = *history[h_idx];
        }
    }

    virtual void redo() {
        if (h_idx + 1 < history.size()) {
            h_idx++;
            *this->parent = *history[h_idx];
        }
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
        return std::make_shared<GameWithHistory>(*this);
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
        for (auto it = history.begin(); it != history.end(); it++) {
            (*it)->consistency_check();
        }
        parent->consistency_check();
    }

};



