# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: atito <atito@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/22 13:49:24 by atito             #+#    #+#              #
#    Updated: 2022/10/30 17:17:08 by atito            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC			=	gcc
CFLAGS		=	-Wall -Wextra -Werror
RM			=	rm -rf
AR			=	ar rcs
NAME		=	libftprintf.a

SRCS_LST	=	ft_printf.c ft_prints.c ft_hex.c ft_str_upper.c ft_uitoa.c

SRCS_OBJS	=	$(SRCS_LST:.c=.o)

$(NAME): $(SRCS_OBJS)
	make -C libft
	cp libft/libft.a ./
	mv libft.a $(NAME)
	$(AR) $(NAME) $(SRCS_OBJS)

all:	$(NAME)

clean:
	$(RM) $(SRCS_OBJS)
	make clean -C libft

fclean:	clean
	$(RM) $(NAME)
	$(RM) libft/libft.a

re:	fclean $(NAME)

.PHONY:	all clean fclean re