#pragma once

#include <fstream>
#include <regex>
#include <string>

#include <move_gen.h>


class FileMove : public MoveGen {
private:
    Go & game;
    std::ifstream f;

    std::shared_ptr<std::string> str;
    std::shared_ptr<std::regex> r;
    std::shared_ptr<std::sregex_iterator> begin, end;

public:

    FileMove(const std::string & file_name, Go & game);

    virtual ~FileMove() = default;

    virtual MoveStatus next_move(GameMove &);
};

