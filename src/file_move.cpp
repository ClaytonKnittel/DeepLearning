
#include <iostream>
#include <curses.h>

#include <file_move.h>
#include <game_with_info.h>


void FileMove::find_moves(const std::string & file_name) {
    std::string str;
    std::ifstream f(file_name);
    std::shared_ptr<std::regex> r;
    std::shared_ptr<std::sregex_iterator> begin, end;
    while (1) {
        if (r == nullptr || (*begin) == (*end)) {
            if (!std::getline(f, str, ';')) {
                break;
            }

            r = std::make_shared<std::regex>("\\s*([^\\[]+)\\[([^\\]]+)\\]");
            begin = std::make_shared<std::sregex_iterator>(
                    str.begin(), str.end(), *r);
            end = std::make_shared<std::sregex_iterator>();
        }
        else {

            std::smatch match = **begin;
            (*begin)++;

            std::string prop = match[1];
            GoMove m;
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

            moves.push_back(m);
        }
    }
}


FileMove::FileMove(const std::string & file_name, Go & game) :
            game(game) {

    find_moves(file_name);
}


MoveStatus FileMove::next_move(GameMove & move) {
    char ch = getch();
    GoMove & gm = dynamic_cast<GoMove &>(move);
    if (ch == 'n') {
        if (game.get_turn() >= moves.size()) {
            return retry;
        }
        gm = moves[game.get_turn()];
        return ok;
    }
    else if (ch == 'm') {
        return undo;
    }
    else if (ch == 'q') {
        return failed;
    }
    else {
        return retry;
    }
}

