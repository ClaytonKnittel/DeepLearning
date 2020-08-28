
#include <game.h>


typedef uint16_t go_turn_t;
typedef uint8_t player_t;

typedef uint8_t coord_t;


typedef uint64_t go_board_bitv_t;


class GoMove : public GameMove {
public:

    go_turn_t turn;
    player_t player;
    coord_t x, y;
};



class Go : public Game {
private:

    coord_t w, h;

    uint8_t board_size;
    go_board_bitv_t * board;

    /*
     * returns the number of go_board_bitv_t elements needed for this board
     */
    int get_board_size() const;


    void _play(GoMove & m);

    void _undo(GoMove & m);

public:

    Go(coord_t w, coord_t h);
    virtual ~Go();

    virtual bool game_over() const;

    virtual int get_score() const;

    virtual bool max_player() const;

    virtual void play(GameMove & m);

    virtual void undo(GameMove & m);

    virtual void for_each_legal_move(std::function<void(Game &, GameMove &)> f);

};

