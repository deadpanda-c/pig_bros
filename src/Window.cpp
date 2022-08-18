#include "../include/SystemFiles.hpp"

Windows::Windows(int x, int y, std::string title)
{
    sf::RenderWindow window(sf::VideoMode(x, y), title);
    sf::Event event;

    while (window.isOpen()) {
        while (window.pollEvent(event)) {
            if (event.type == sf::Event::Closed)
                window.close();
        }
        window.clear();
        window.display();
    }

}