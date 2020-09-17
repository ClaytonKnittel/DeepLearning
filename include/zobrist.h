#pragma once

#include <cstdint>
#include <go.h>


typedef uint64_t zob_hash_t;

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
private:

    // e (empty), b (black), w (white)
    static constexpr uint32_t num_states = 3;

    static constexpr uint8_t empty = 0;
    static constexpr uint8_t black = 1;
    static constexpr uint8_t white = 2;

    const coord_t w, h;

    /*
     * w * h * num_states table of randomized bitstrings
     */
    zob_hash_t * table;

    /*
     * "rotate" the hash by 90 degrees
     */
    static zob_hash_t rot(zob_hash_t h);

    /*
     * "mirror" the hash about the vertical symmetry line
     */
    static zob_hash_t mir(zob_hash_t h);

    /*
     * swap the colors of the hash
     */
    static zob_hash_t col_x(zob_hash_t h);


    /*
     * returns the index of the given coordinate triple, where
     * color is one of empty, black, or white
     */
    size_t to_idx(coord_t x, coord_t y, uint8_t color) const;


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

};

