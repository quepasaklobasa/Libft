NAME= libft.a

CC = gcc 

CFLAGS = -Wall -Wextra -Werror

SRCS =	ft_printf_putchars.c \
		ft_printf_putnbrs.c \
		ft_puthex.c \
		ft_printf.c \
		get_next_line.c \
		get_next_line_utils.c \
		ft_isalpha.c \
		ft_isdigit.c \
		ft_isalnum.c \
		ft_isascii.c \
		ft_isprint.c \
		ft_strlen.c \
		ft_memset.c \
		ft_putstr_fd.c \
		ft_bzero.c \
		ft_memcpy.c \
		ft_memmove.c \
		ft_strlcpy.c \
		ft_strlcat.c \
		ft_toupper.c \
		ft_tolower.c \
		ft_strchr.c \
		ft_strrchr.c \
		ft_strncmp.c \
		ft_strcmp.c \
		ft_memchr.c \
		ft_memcmp.c \
		ft_strnstr.c \
		ft_atoi.c \
		ft_calloc.c \
		ft_strdup.c \
		ft_substr.c \
		ft_strjoin.c \
		ft_strtrim.c \
		ft_split.c \
		ft_itoa.c \
		ft_strmapi.c \
		ft_striteri.c \
		ft_putchar_fd.c \
		ft_putendl_fd.c \
		ft_putnbr_fd.c
OBJS= $(SRCS:.c=.o)

BONUS_SRCS =	ft_lstnew.c \
				ft_lstadd_front.c \
				ft_lstsize.c \
				ft_lstlast.c \
				ft_lstadd_back.c \
				ft_lstdelone.c \
				ft_lstclear.c \
				ft_lstiter.c \
				ft_lstmap.c
BONUS_OBJS= $(BONUS_SRCS:.c=.o)

ALL_OBJS= $(OBJS) $(BONUS_OBJS)

$(NAME): $(OBJS)
	ar -rcs $(NAME) $(OBJS)
	@echo "Libft successfully created. GG."

bonus: $(NAME) $(BONUS_OBJS)
	ar -rcs libft.a $(ALL_OBJS)

all: $(NAME)

%.o: %.c libft.h
	$(CC) -I. -c $< -o $(<:.c=.o)

clean:
	rm -rf $(ALL_OBJS)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re bonus