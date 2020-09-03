
#include <algorithm>
#include <iostream>
#include <string>

#include <go.h>

int main(int argc, char * argv[]) {

    Go g(5, 5);

    bool print = true;

    while (true) {

        if (print) {
            std::cout << g << std::endl;
            g.print_info(std::cout);
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
        m.turn = 0;
        m.color = Color::black;
        m.x = c_let - 'A' - (c_let > 'I');
        m.y = r - 1;

        if (c_let == 'I' || m.x >= g.width() || m.y >= g.height()) {
            fprintf(stderr, "Unknown tile\n");
            print = false;
            continue;
        }

        g.play(m);
    }

    return 0;
}

