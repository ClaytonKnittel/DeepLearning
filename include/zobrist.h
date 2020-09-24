#pragma once

#include <cstdint>
#include <go.h>


typedef uint64_t zob_hash_t;


struct ZobTable {
    zob_hash_t * table;

    ZobTable(zob_hash_t * table) : table(table) {}
    ~ZobTable() {
        if (table) {
            free(table);
        }
    }
};


class ZobristHash {
    /*
     * implementation of a 16-way symmetrically invariant zobrist hash
     * function, based on the algorithm proposed in
     * http://fragrieu.free.fr/zobrist.pdf
     *
     * the symmetries under which the hash is invariant are the following:
     *  r: rotation by 90 degrees (x -> width - y - 1, y -> x)
     *  m: mirroring vertically (x -> width - x - 1)
     *  x: color exchanging (e -> e, b -> w, w -> b)
     *
     * and the following equations are satisfied under these symmetry
     * operations (writing the hash Z(board) = z1 z2 z3 z4 z5 z6 z7 z8 in 8
     * 8-bit bytes):
     *  Z(r x board) = z2 z3 z4 z1 z6 z7 z8 z5
     *  Z(m x board) = z4 z3 z2 z1 z8 z7 z6 z5
     *  Z(x x board) = z5 z6 z7 z8 z1 z2 z3 z4
     *
     * necessary restrictions on values of tiles on symmetry lines:
     *  tengen: z1 z1 z1 z1 z2 z2 z2 z2
     *  vertical axis: z1 z2 z2 z1 z3 z4 z4 z3
     *  horizontal axis: z1 z1 z2 z2 z3 z3 z4 z4
     *  diagonal axis (x = y): z1 z2 z3 z2 z4 z5 z6 z5
     *  diagonal axis (x = w - y - 1): z1 z2 z1 z3 z4 z5 z4 z6
     */
public:

    // e (empty), b (black), w (white), ko
    static constexpr uint32_t num_states = 4;

    static constexpr zob_hash_t gold_r = 0x9e3779b97f4a7c13llu;

    static constexpr uint8_t empty = 0;
    static constexpr uint8_t black = 1;
    static constexpr uint8_t white = 2;
    static constexpr uint8_t ko    = 3;

    static constexpr uint8_t black_turn = 0;
    static constexpr uint8_t white_turn = 1;
    static constexpr uint8_t black_pass_turn = 2;
    static constexpr uint8_t white_pass_turn = 3;

private:

    const coord_t w, h;

    /*
     * w * h * num_states table of randomized bitstrings
     */
    std::shared_ptr<ZobTable> zt;

    // possible values (black, white, black 1-pass, white 1-pass)
    zob_hash_t turn_hashes[4];

    /*
     * "rotate" the hash by 90 degrees
     */
    static zob_hash_t rot(zob_hash_t h);

    /*
     * "mirror" the hash about the vertical symmetry line
     */
    static zob_hash_t vmir(zob_hash_t h);

    /*
     * "mirror" the hash about the horizontal symmetry line
     */
    static zob_hash_t hmir(zob_hash_t h);

    /*
     * swap the colors of the hash
     */
    static zob_hash_t col_x(zob_hash_t h);


    /*
     * returns the index of the given coordinate triple, where
     * color is one of empty, black, or white
     */
    board_idx_t to_idx(coord_t x, coord_t y, uint8_t color) const;


    /*
     * repopulates x and y with the point at (x, y) rotated by 90 degrees
     */
    void rot_coords(coord_t & x, coord_t & y) const;

    /*
     * repopulates x and y with the point at (x, y) mirrored about the vertical
     * symmetry axis
     */
    void mir_coords(coord_t & x, coord_t & y) const;


    /*
     * initializes the hash function, to only be called once
     */
    void initialize();

public:

    ZobristHash(coord_t w, coord_t h);

    inline zob_hash_t hash(const Go & g) {
        const zob_hash_t * table = zt->table;
        zob_hash_t h = 0;
        for (coord_t y = 0; y < this->h; y++) {
            for (coord_t x = 0; x < this->w; x++) {
                uint8_t tile = (uint8_t) g.tile_at(x, y);
                //printf("%d ", tile);
                h ^= table[to_idx(x, y, tile)];
            }
            //printf("\n");
        }
        uint8_t turn_idx = (g.get_player() == white) + (g.has_passed() << 1);
        h ^= turn_hashes[turn_idx];

        // combine h with other 15 symmetries
        zob_hash_t res = (gold_r + (h << 1));
        h = rot(h);
        res *= (gold_r + (h << 1));
        h = rot(h);
        res *= (gold_r + (h << 1));
        h = rot(h);
        res *= (gold_r + (h << 1));
        h = hmir(h);
        res *= (gold_r + (h << 1));
        h = rot(h);
        res *= (gold_r + (h << 1));
        h = rot(h);
        res *= (gold_r + (h << 1));
        h = rot(h);
        res *= (gold_r + (h << 1));

        h = col_x(h);
        res *= (gold_r + (h << 1));
        h = rot(h);
        res *= (gold_r + (h << 1));
        h = rot(h);
        res *= (gold_r + (h << 1));
        h = rot(h);
        res *= (gold_r + (h << 1));
        h = hmir(h);
        res *= (gold_r + (h << 1));
        h = rot(h);
        res *= (gold_r + (h << 1));
        h = rot(h);
        res *= (gold_r + (h << 1));
        h = rot(h);
        res *= (gold_r + (h << 1));

        return res >> 1;
    }

    void consistency_check() const;

};

