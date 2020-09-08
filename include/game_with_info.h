#pragma once

#include <memory>
#include <string>

#include <go.h>

class GameWithInfo : public Go {
private:

    std::string p1_name, p2_name;
    board_idx_t last_move;

public:

    template <typename ...Args>
    GameWithInfo(Args... args) : Go(args...),
            p1_name(Go::default_p1_name),
            p2_name(Go::default_p2_name), last_move(-1) {
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
        this->print_named(o, p1_name, p2_name, last_move);
    }
};


