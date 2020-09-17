
#include <cstdlib>

#include <math/random.h>

#include <zobrist.h>


zob_hash_t ZobristHash::rot(zob_hash_t h) {
    return ((h << 8)  & 0x00ffffff00ffffffllu) |
           ((h >> 24) & 0xff000000ff000000llu);
}

zob_hash_t ZobristHash::mir(zob_hash_t h) {
    // swap adjacent bytes
    h = ((h << 8)  & 0xff00ff00ff00ff00llu) |
        ((h >> 8)  & 0x00ff00ff00ff00ffllu);
    // swap adjacent byte pairs
    h = ((h << 16) & 0xffff0000ffff0000llu) |
        ((h >> 16) & 0x0000ffff0000ffffllu);
    return h;
}

zob_hash_t ZobristHash::col_x(zob_hash_t h) {
    return (h << 32) | (h >> 32);
}


size_t ZobristHash::to_idx(coord_t x, coord_t y, uint8_t color) const {
    return num_states * (x + w * y) + color;
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

    zob_hash_t rand_gen;

    // give the RNG a random seed
    seed_rand(time(NULL), 1);

    for (coord_t y = 0; y <= mid_y; y++) {
        for (coord_t x = 0; x <= y; x++) {

            rand_gen = gen_rand64();
            
            // the vertical/horizontal symmetry axes only apply when the board
            // is odd-length
            if (!even_dims) {
                if (x == mid_x) {
                    if (y == mid_y) {
                        // tengen, repeat first and fifth byte in next 3 bytes
                        // respectively
                        rand_gen = rand_gen & 0x000000ff000000ffllu;
                        rand_gen = rand_gen | (rand_gen << 16);
                        rand_gen = rand_gen | (rand_gen << 8);
                    }
                    else {
                        // on vertical symmetry line, first byte repeats in
                        // byte 4, third in byte 3, fifth in byte 8, and 7th in
                        // byte 6
                        rand_gen = (rand_gen & 0x00ff00ff00ff00ffllu) |
                            ((rand_gen << 24) & 0xff000000ff000000llu) |
                            ((rand_gen >> 8)  & 0x0000ff000000ff00llu);
                    }
                }
                else {
                    if (y == mid_y) {
                        // on horizontal symmetry line, byte pairs must match
                        rand_gen = rand_gen & 0x00ff00ff00ff00ffllu;
                        rand_gen = rand_gen | (rand_gen << 8);
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
                }
                else if (x == w - y - 1) {
                    // North-West symmetry line, even-indexed byte pairs must match
                    rand_gen = (rand_gen & 0xff00ffffff00ffffllu) |
                        ((rand_gen << 16) & 0x00ff000000ff0000llu);
                }
                else {
                    // otherwise, we are not on a symmetry line
                }
            }
        }
    }
}



ZobristHash::ZobristHash(coord_t w, coord_t h) : w(w), h(h) {
    GO_ASSERT(w == h, "width and height must match for Zobrist hash");

    size_t num_entries = w * h * num_states;
    table = (zob_hash_t *) malloc(num_entries * sizeof(zob_hash_t));
    if (!table) {
        throw std::runtime_error("unable to malloc memory for zorist hash table");
    }

    initialize();
}

