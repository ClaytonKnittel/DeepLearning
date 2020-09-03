
#include <algorithm>
#include <iostream>
#include <string>

#include <fun/print_colors.h>

#include <go.h>

int main(int argc, char * argv[]) {

    Go g(5, 5);

    bool print = true;

    while (true) {

        if (print) {
            std::cout << g << std::endl;
            g.print_str_idx(std::cout);
            std::cout << std::endl;
            g.print_libs(std::cout);
            std::cout << std::endl;
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
            continue;
        }

        GoMove m;
        m.color = (g.get_turn() & 1) ? Color::white : Color::black;
        m.x = c_let - 'A' - (c_let > 'I');
        m.y = r - 1;

        if (c_let == 'I' || m.x >= g.width() || m.y >= g.height()) {
            fprintf(stderr, "Unknown tile\n");
            print = false;
            continue;
        }

        try {
            g.play(m);
            g.consistency_check();
        } catch (const std::runtime_error & e) {
            std::cout << g << std::endl;
            g.print_str_idx(std::cout);
            std::cout << std::endl;
            g.print_libs(std::cout);
            std::cout << std::endl;
            std::cerr << P_RED << e.what() << P_DEFAULT << std::endl;
            break;
        }
    }

    return 0;
}

