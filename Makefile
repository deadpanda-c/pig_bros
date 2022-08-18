CXX	=	g++

SRC	=	$(shell find src/ -type f -name '*.cpp')

OBJ	=	$(SRC:.cpp=.o)

LFLAG	=	-lsfml-graphics -lsfml-window -lsfml-system

CFLAGS	=	-W -Wall -Wextra -Werror

NAME	=	pig_bros

all:	$(OBJ)
	$(CXX) -o $(NAME) $(OBJ)   $(LFLAG)  $(CFLAGS) -I./include

clean:
	rm -rf src/*.o src/*~ src/*.swp *.vgcore*

fclean: clean
	rm -rf $(NAME)

re: fclean all