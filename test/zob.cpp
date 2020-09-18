
#include <cstdio>

#include <iostream>

#include <zobrist.h>
#include <go.h>

int main() {

    constexpr int n_bins = 31;
    int bins[n_bins] = { 0 };

    Go g(5, 5);
    ZobristHash zh(g.width(), g.height());

    zob_hash_t h = zh.hash(g);

    printf("%llx\n", h);

    GoMove m;

    for (int i = 0; i < 15; i++) {
        m.color = (i & 1) == 0 ? black : white;
        m.x = i % g.width();
        m.y = 2 * (i / g.width());

        g.play(m);

        h = zh.hash(g);

        bins[h % n_bins]++;

        printf("%llx (%llu)\n", h, h % n_bins);
    }

    for (int i = 0; i < n_bins; i++) {
        printf("[%d]: %d\n", i, bins[i]);
    }

    std::cout << g << std::endl;

    return 0;
}

