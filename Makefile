#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bmiller <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/05/23 16:12:54 by bmiller           #+#    #+#              #
#    Updated: 2017/05/23 17:23:13 by bmiller          ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME = ft_ls

CC = gcc

CFLAGS = -Wall -Wextra -Werror -g -fsanitize=address

srcdir = src/

SRC = main.c ft_ls.c

SRCS = $(SRC:%.c=$(srcdir)%.c)

objdir = obj/

OBJ = $(SRCS:$(srcdir)%.c=$(objdir)%.o)

libdir = lib/

libs = -lft

LIB = $(libdir)libft.a

INC = -Iinclude -I$(libdir)include

all: $(NAME)

$(LIB):
	cd lib && make

$(NAME): $(LIB)
	$(CC) $(INC) -L$(libdir) $(libs) $(CFLAGS) -o $(NAME) $(SRCS)

clean:
	rm -rf $(objdir)
	cd lib && make clean

fclean: clean
	rm -rf  $(objdir) $(NAME) *.dSYM
	cd lib && make fclean

re: fclean all
