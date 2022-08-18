CXX	=	g++

SRC	=	$(shell find src/ -type f -name '*.cpp')

OBJ	=	$(SRC:.cpp=.o)

CFLAGS	=	-W -Wall -Wextra -Werror

NAME	=	pig_bros

all:	$(OBJ)
	$(CXX) -o $(NAME) $(OBJ) $(CFLAGS) -I include

clean:
	rm -rf *.o *~ *.swp *.vgcore*

fclean:
	rm -rf $(NAME)

re: fclean all