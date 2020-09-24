
#include <cstdio>

#include <iostream>

#include <zobrist.h>
#include <go.h>

class SymmCheck {
    constexpr static uint32_t n_symmetries = 8;

    coord_t w, h;
    ZobristHash zh;
    Go gos[n_symmetries];

public:
    SymmCheck(coord_t w, coord_t h) : w(w), h(h), zh(w, h),
            gos{ Go(w, h), Go(w, h), Go(w, h), Go(w, h),
                 Go(w, h), Go(w, h), Go(w, h), Go(w, h)/*,
                 Go(w, h), Go(w, h), Go(w, h), Go(w, h),
                 Go(w, h), Go(w, h), Go(w, h), Go(w, h)*/ } {

        zh.consistency_check();
    }

    void play(const GoMove & m) {
        GoMove movs[n_symmetries];

        bool has_b4 = false;
        zob_hash_t p_h;
        for (int i = 0; i < n_symmetries; i++) {
            GoMove & mov = movs[i];

            int rot = i % 4;
            int mir = (i / 4) % 2;

            coord_t x = m.x;
            coord_t y = m.y;

            for (int r = 0; r < rot; r++) {
                mov.x = w - y - 1;
                mov.y = x;
                x = mov.x;
                y = mov.y;
            }

            if (mir) {
                x = w - x - 1;
            }

            mov.color = m.color;
            mov.x = x;
            mov.y = y;
            gos[i].play(mov);

            zob_hash_t has = zh.hash(gos[i]);
            //std::cout << gos[i];
            //printf("hash: %llx\n", has);
            if (!has_b4) {
                p_h = has;
                has_b4 = true;
            }
            else {
                if (p_h != has) {
                    printf("hash: %llx\n", p_h);
                    std::cout << gos[0] << std::endl;
                    printf("hash: %llx\n", has);
                    std::cout << gos[i] << std::endl;

                    GO_ASSERT(p_h == has, "symmetry hashes do not match");
                }
            }
        }

        std::cout << gos[0];
        printf("hash: %llx\n", p_h);
    }
};

int main() {

    constexpr coord_t w = 5, h = 5;


    //printf("%llx\n", h);

    SymmCheck sc(w, h);

    GoMove m;

    for (int i = 0; i < 15; i++) {
        m.color = (i & 1) == 0 ? black : white;
        m.x = i % w;
        m.y = 2 * (i / w);

        sc.play(m);
    }


    return 0;
}

