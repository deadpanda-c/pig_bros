#pragma once
    #include "./SystemFiles.hpp"

class Windows
{
    public:
        Windows(int, int, std::string); // x, y, title
        int getWindowsXY(sf::RenderWindow);
        int getWindowTitle(sf::RenderWindow);
    private:
        int window_x;
        int window_y;
        std::string window_title;
};