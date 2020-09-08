#pragma once

#include <fstream>
#include <regex>
#include <string>

#include <move_gen.h>


class FileMove : public MoveGen {
private:
    Go & game;

    std::vector<GoMove> moves;

    void find_moves(const std::string &);

public:

    FileMove(const std::string & file_name, Go & game);

    virtual ~FileMove() = default;

    virtual MoveStatus next_move(GameMove &);
};

