
#include <iostream>
#include <string>
#include <curses.h>

#include <user_move.h>


MoveStatus UserMove::next_move(GameMove & move) {
    std::string buf;

    char ch;
    while ((ch = getch()) != '\n') {
        if (ch == 127) {
            // delete character
            if (buf.size() > 0) {
                buf.pop_back();
                delch();
                int x, y;
                getyx(curscr, y, x);
                mvdelch(y, x - 1);
            }
        }
        else {
            buf += ch;
            printw("%c", ch);
        }
    }

    if (buf == "quit" || buf == "q" || buf == "exit") {
        return failed;
    }

    int r;
    char c_let;
    if (sscanf(buf.c_str(), "%c%d", &c_let, &r) != 2) {
        fprintf(stderr, "\r\nUnable to parse\r\n");
        return retry;
    }

    GoMove & m = dynamic_cast<GoMove &>(move);
    m.color = (game.get_turn() & 1) ? Color::white : Color::black;
    m.x = c_let - 'A' - (c_let > 'I');
    m.y = game.height() - r;

    if (c_let == 'I' || m.x >= game.width() || m.y >= game.height()) {
        fprintf(stderr, "\r\nUnknown tile\r\n");
        return retry;
    }
    return ok;
}

