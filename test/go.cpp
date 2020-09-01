
#include <algorithm>
#include <iostream>

#include <go.h>

int main(int argc, char * argv[]) {

    for (int w = 3; w <= 25; w += 2) {
        Go g(w, w);

        std::cout << g << std::endl;
    }

    return 0;
}

