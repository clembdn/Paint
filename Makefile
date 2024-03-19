##
## EPITECH PROJECT, 2023
## makefile
## File description:
## makefile
##

SRC	=	src/paint.c				\
		src/init_tools.c		\
		src/init_button.c		\
		src/init_button2.c 		\
		src/draw.c				\
		src/action_button.c		\
		src/init_color.c		\
		src/init_color2.c		\
		src/selected_color.c	\

OBJ	=	$(SRC:.c=.o)

NAME	=	my_paint

CSFML =		-lcsfml-graphics -lcsfml-system -lcsfml-window -lm

all:		$(NAME)

$(NAME): 	$(OBJ)
			gcc -g3 $(SRC) -o $(NAME) -I ./include/ $(CSFML)

clean:
		rm -rf $(OBJ)

fclean: clean
		rm -f $(NAME)

re:		fclean all
