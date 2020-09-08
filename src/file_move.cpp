
#include <iostream>

#include <file_move.h>
#include <game_with_info.h>


FileMove::FileMove(const std::string & file_name, Go & game) : game(game),
            f(file_name), r(nullptr), begin(nullptr), end(nullptr) {
}


MoveStatus FileMove::next_move(GameMove & move) {
    while (1) {
        if (r == nullptr || (*begin) == (*end)) {
            std::string buf;
            if (!std::getline(f, buf, ';')) {
                return failed;
            }
            str = std::make_shared<std::string>(buf);

            r = std::make_shared<std::regex>("\\s*([^\\[]+)\\[([^\\]]+)\\]");
            begin = std::make_shared<std::sregex_iterator>(
                    str->begin(), str->end(), *r);
            end = std::make_shared<std::sregex_iterator>();
            return this->next_move(move);
        }
        else {

            std::smatch match = **begin;
            (*begin)++;

            std::string prop = match[1];
            GoMove & m = dynamic_cast<GoMove &>(move);
            if (prop == "B") {
                m.color = Color::black;
            }
            else if (prop == "W") {
                m.color = Color::white;
            }
            else if (prop == "PB") {
                GameWithInfo * gi;
                if ((gi = dynamic_cast<GameWithInfo *>(&this->game))) {
                    gi->set_p1_name(match[2]);
                }
                continue;
            }
            else if (prop == "PW") {
                GameWithInfo * gi;
                if ((gi = dynamic_cast<GameWithInfo *>(&this->game))) {
                    gi->set_p2_name(match[2]);
                }
                continue;
            }
            else {
                continue;
            }

            std::string coords = match[2];
            m.x = (coord_t) (coords[0] - 'a');
            m.y = (coord_t) (coords[1] - 'a');

            return ok;
        }
    }
}

