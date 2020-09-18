
#include <cstdlib>

#include <math/random.h>

#include <zobrist.h>


zob_hash_t ZobristHash::rot(zob_hash_t h) {
    h = ((h >> 8)  & 0x00ffffff00ffffffllu) |
           ((h << 24) & 0xff000000ff000000llu);
    return h;
}

zob_hash_t ZobristHash::vmir(zob_hash_t h) {
    // swap adjacent bytes
    h = ((h << 8)  & 0xff00ff00ff00ff00llu) |
        ((h >> 8)  & 0x00ff00ff00ff00ffllu);
    // swap adjacent byte pairs
    h = ((h << 16) & 0xffff0000ffff0000llu) |
        ((h >> 16) & 0x0000ffff0000ffffllu);
    return h;
}

zob_hash_t ZobristHash::hmir(zob_hash_t h) {
    // swap adjacent bytes
    h = ((h << 8)  & 0xff00ff00ff00ff00llu) |
        ((h >> 8)  & 0x00ff00ff00ff00ffllu);
    return h;
}

zob_hash_t ZobristHash::col_x(zob_hash_t h) {
    return (h << 32) | (h >> 32);
}


board_idx_t ZobristHash::to_idx(coord_t x, coord_t y, uint8_t color) const {
    return num_states * ((board_idx_t) x + w * (board_idx_t) y) + color;
}


void ZobristHash::rot_coords(coord_t & x, coord_t & y) const {
    coord_t _x = x;
    coord_t _y = y;
    x = w - _y - 1;
    y = _x;
}

void ZobristHash::mir_coords(coord_t & x, coord_t & y) const {
    x = w - x - 1;
}



void ZobristHash::initialize() {
    const coord_t mid_x = (w - 1) / 2;
    const coord_t mid_y = (h - 1) / 2;

    bool even_dims = (w & 1) == 0;

    zob_hash_t rand_gen, blank_rand, ko_rand;

    // give the RNG a random seed
    seed_rand(time(NULL), 1);

#define DO_TENGEN(x, y, h, bh, kh) \
    do { \
        board_idx_t idx = (x) + w * (y); \
        table[empty + num_states * idx] = (bh); \
        table[black + num_states * idx] = (h); \
        table[white + num_states * idx] = col_x((h)); \
        table[ko    + num_states * idx] = (kh); \
    } while (0)

#define DO_ROT_SYMS(x, y, h, bh, kh) \
    do { \
        board_idx_t idx = (x) + w * (y); \
        table[empty + num_states * idx] = (bh); \
        table[black + num_states * idx] = (h); \
        table[white + num_states * idx] = col_x((h)); \
        table[ko    + num_states * idx] = (kh); \
        h = rot(h); \
        bh = rot(bh); \
        idx = w * ((x) + 1) - (y) - 1; \
        table[empty + num_states * idx] = (bh); \
        table[black + num_states * idx] = (h); \
        table[white + num_states * idx] = col_x((h)); \
        table[ko    + num_states * idx] = (kh); \
        h = rot(h); \
        bh = rot(bh); \
        idx = w * (w - (y)) - (x) - 1; \
        table[empty + num_states * idx] = (bh); \
        table[black + num_states * idx] = (h); \
        table[white + num_states * idx] = col_x((h)); \
        table[ko    + num_states * idx] = (kh); \
        h = rot(h); \
        bh = rot(bh); \
        idx = w * (w - (x) - 1) + (y); \
        table[empty + num_states * idx] = (bh); \
        table[black + num_states * idx] = (h); \
        table[white + num_states * idx] = col_x((h)); \
        table[ko    + num_states * idx] = (kh); \
    } while (0)

#define DO_DIHEDRAL_SYMS(x, y, h, bh, kh) \
    do { \
        board_idx_t idx = (x) + w * (y); \
        table[empty + num_states * idx] = (bh); \
        table[black + num_states * idx] = (h); \
        table[white + num_states * idx] = col_x((h)); \
        table[ko    + num_states * idx] = (kh); \
        h = rot(h); \
        bh = rot(bh); \
        idx = w * ((x) + 1) - (y) - 1; \
        table[empty + num_states * idx] = (bh); \
        table[black + num_states * idx] = (h); \
        table[white + num_states * idx] = col_x((h)); \
        table[ko    + num_states * idx] = (kh); \
        h = rot(h); \
        bh = rot(bh); \
        idx = w * (w - (y)) - (x) - 1; \
        table[empty + num_states * idx] = (bh); \
        table[black + num_states * idx] = (h); \
        table[white + num_states * idx] = col_x((h)); \
        table[ko    + num_states * idx] = (kh); \
        h = rot(h); \
        bh = rot(bh); \
        idx = w * (w - (x) - 1) + (y); \
        table[empty + num_states * idx] = (bh); \
        table[black + num_states * idx] = (h); \
        table[white + num_states * idx] = col_x((h)); \
        table[ko    + num_states * idx] = (kh); \
        \
        h = vmir(h); \
        bh = vmir(bh); \
        idx = w * (x) + (y); \
        table[empty + num_states * idx] = (bh); \
        table[black + num_states * idx] = (h); \
        table[white + num_states * idx] = col_x((h)); \
        table[ko    + num_states * idx] = (kh); \
        h = rot(h); \
        bh = rot(bh); \
        idx = w * (w - (y) - 1) + (x); \
        table[empty + num_states * idx] = (bh); \
        table[black + num_states * idx] = (h); \
        table[white + num_states * idx] = col_x((h)); \
        table[ko    + num_states * idx] = (kh); \
        h = rot(h); \
        bh = rot(bh); \
        idx = w * (w - (x)) - (y) - 1; \
        table[empty + num_states * idx] = (bh); \
        table[black + num_states * idx] = (h); \
        table[white + num_states * idx] = col_x((h)); \
        table[ko    + num_states * idx] = (kh); \
        h = rot(h); \
        bh = rot(bh); \
        idx = w * ((y) + 1) - (x) - 1; \
        table[empty + num_states * idx] = (bh); \
        table[black + num_states * idx] = (h); \
        table[white + num_states * idx] = col_x((h)); \
        table[ko    + num_states * idx] = (kh); \
    } while (0)


    for (coord_t y = 0; y <= mid_y; y++) {
        for (coord_t x = 0; x <= y; x++) {

            rand_gen = gen_rand64();

            // hash for blank tiles, which must obey the symmetry
            // Z(x x blank) = Z(blank), i.e. they are invariant under color
            // exchange
            blank_rand = (zob_hash_t) gen_rand();
            blank_rand = blank_rand | (blank_rand << 32);

            ko_rand = (zob_hash_t) gen_rand();
            ko_rand = ko_rand | (ko_rand << 32);

            // the vertical/horizontal symmetry axes only apply when the board
            // is odd-length
            if (!even_dims) {
                if (x == mid_x) {
                    GO_ASSERT(y == mid_y, "x cannot exceed y");
                    // tengen, repeat first and fifth byte in next 3 bytes
                    // respectively
                    rand_gen = rand_gen & 0x000000ff000000ffllu;
                    rand_gen = rand_gen | (rand_gen << 16);
                    rand_gen = rand_gen | (rand_gen << 8);

                    blank_rand = blank_rand & 0x000000ff000000ffllu;
                    blank_rand = blank_rand | (blank_rand << 16);
                    blank_rand = blank_rand | (blank_rand << 8);

                    ko_rand = ko_rand & 0x000000ff000000ffllu;
                    ko_rand = ko_rand | (ko_rand << 16);
                    ko_rand = ko_rand | (ko_rand << 8);

                    DO_TENGEN(x, y, rand_gen, blank_rand, ko_rand);
                }
                else {
                    if (y == mid_y) {
                        // on horizontal symmetry line, byte pairs must match
                        rand_gen = rand_gen & 0x00ff00ff00ff00ffllu;
                        rand_gen = rand_gen | (rand_gen << 8);

                        blank_rand = blank_rand & 0x00ff00ff00ff00ffllu;
                        blank_rand = blank_rand | (blank_rand << 8);

                        ko_rand = ko_rand & 0x00ff00ff00ff00ffllu;
                        ko_rand = ko_rand | (ko_rand << 8);

                        DO_ROT_SYMS(x, y, rand_gen, blank_rand, ko_rand);
                    }
                    else {
                        // not on any symmetry line
                        goto off_axes;
                    }
                }
            }
            else {
off_axes:

                if (x == y) {
                    // North-East symmetry line, odd-indexed byte pairs must match
                    rand_gen = (rand_gen & 0x00ffffff00ffffffllu) |
                        ((rand_gen << 16) & 0xff000000ff000000llu);

                    blank_rand = (blank_rand & 0x00ffffff00ffffffllu) |
                        ((blank_rand << 16) & 0xff000000ff000000llu);

                    ko_rand = (ko_rand & 0x00ffffff00ffffffllu) |
                        ((ko_rand << 16) & 0xff000000ff000000llu);

                    DO_ROT_SYMS(x, y, rand_gen, blank_rand, ko_rand);
                }
                else if (x == w - y - 1) {
                    // North-West symmetry line, even-indexed byte pairs must match
                    rand_gen = (rand_gen & 0xff00ffffff00ffffllu) |
                        ((rand_gen << 16) & 0x00ff000000ff0000llu);

                    blank_rand = (blank_rand & 0xff00ffffff00ffffllu) |
                        ((blank_rand << 16) & 0x00ff000000ff0000llu);

                    ko_rand = (ko_rand & 0xff00ffffff00ffffllu) |
                        ((ko_rand << 16) & 0x00ff000000ff0000llu);

                    DO_ROT_SYMS(x, y, rand_gen, blank_rand, ko_rand);
                }
                else {
                    // otherwise, we are not on a symmetry line

                    DO_DIHEDRAL_SYMS(x, y, rand_gen, blank_rand, ko_rand);
                }
            }
        }
    }

    // now populate turn_hashes

    rand_gen = gen_rand();

    zob_hash_t black_h = (rand_gen & 0x000000ff000000ffllu);
    black_h = black_h | (black_h << 16);
    black_h = black_h | (black_h << 8);

    zob_hash_t black_pass_h = (rand_gen & 0x0000ff000000ff00llu);
    black_pass_h = black_pass_h | (black_pass_h << 16);
    black_pass_h = black_pass_h | (black_pass_h >> 8);

    zob_hash_t white_h = col_x(black_h);
    zob_hash_t white_pass_h = col_x(black_pass_h);

    turn_hashes[black_turn] = black_h;
    turn_hashes[white_turn] = white_h;
    turn_hashes[black_pass_turn] = black_pass_h;
    turn_hashes[white_pass_turn] = white_pass_h;
}



ZobristHash::ZobristHash(coord_t w, coord_t h) : w(w), h(h) {
    GO_ASSERT(w == h, "width and height must match for Zobrist hash");

    size_t num_entries = w * h * num_states;
    table = (zob_hash_t *) malloc(num_entries * sizeof(zob_hash_t));
    if (!table) {
        throw std::runtime_error("unable to malloc memory for zorist hash table");
    }

    initialize();

    printf("blank board:\n");
    for (board_idx_t y = 0; y < h; y++) {
        for (board_idx_t x = 0; x < w; x++) {
            printf("%016llx ", table[to_idx(x, y, empty)]);
        }
        printf("\n");
    }

    printf("black board:\n");
    for (board_idx_t y = 0; y < h; y++) {
        for (board_idx_t x = 0; x < w; x++) {
            printf("%016llx ", table[to_idx(x, y, black)]);
        }
        printf("\n");
    }

    printf("white board:\n");
    for (board_idx_t y = 0; y < h; y++) {
        for (board_idx_t x = 0; x < w; x++) {
            printf("%016llx ", table[to_idx(x, y, white)]);
        }
        printf("\n");
    }
}

