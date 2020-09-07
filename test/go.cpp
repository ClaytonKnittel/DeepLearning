
#include <algorithm>
#include <iostream>
#include <iomanip>
#include <sstream>
#include <string>

#include <fun/print_colors.h>

#include <go.h>


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

int main(int argc, char * argv[]) {

    Go g(5, 5);

    bool print = true;

    while (true) {

        if (print) {
            interleave_print(g);
        }
        print = true;

        std::string buf;
        std::cin >> buf;

        if (buf == "quit" || buf == "q" || buf == "exit") {
            break;
        }

        int r;
        char c_let;
        if (sscanf(buf.c_str(), "%c%d", &c_let, &r) != 2) {
            fprintf(stderr, "Unable to parse\n");
            print = false;
            break;
            //continue;
        }

        GoMove m;
        m.color = (g.get_turn() & 1) ? Color::white : Color::black;
        m.x = c_let - 'A' - (c_let > 'I');
        m.y = g.height() - r;

        if (c_let == 'I' || m.x >= g.width() || m.y >= g.height()) {
            fprintf(stderr, "Unknown tile\n");
            print = false;
            continue;
        }

        try {
            g.play(m);
            g.consistency_check();
        } catch (const std::runtime_error & e) {
            interleave_print(g);
            std::cerr << P_RED << e.what() << P_DEFAULT << std::endl;
            break;
        }
    }

    return 0;
}

