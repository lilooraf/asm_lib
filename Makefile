##
## EPITECH PROJECT, 2020
## Tek2 (Workspace)
## File description:
## Makefile
##

SRC			=	strlen.s	\
				strchr.s	\
				memset.s	\
				memcpy.s	\
				strcmp.s	\
				strncmp.s	\
				rindex.s	\
				strcasecmp.s	\
				memmove.s

OBJ			=	$(SRC:.s=.o)

CFLAGS		=	-fPIC

ASFLAG		=	-felf64

LDFLAGS		=	-shared -fPIC

CC			=	nasm

NAME		=	libasm.so

all: $(NAME)

$(NAME):	$(OBJ)
	ld -o $(NAME) $(OBJ) $(LDFLAGS)

%.o:	%.s
	@$(CC) $(ASFLAG) $< -o $@

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re:	fclean all

.PHONY:	all clean fclean re