rm *.o
rm runme
#gcc -Wall -Wextra -Werror -g -O0 *.c *.h minilibx/libmlx.a minilibx/mlx_screen_size.c minilibx/mlx.h libft/libft.h libft/*.c src/src_gnl/*.c src/src_gnl/read_cub.h src/src_gnl/gnl/get_next_line.h src/src_gnl/gnl/*.c src/src_gnl/gnl_bonus/get_next_line_bonus.h src/src_gnl/gnl_bonus/*.c -o runme -lm -L/usr/X11/lib -lXext -lX11
#gcc -c -Wall -Wextra -Werror -g -O0 *.c *.h libasm.a
#gcc -o runme *.o
gcc -Wall -Wextra -Werror -g -O0 main.c libasm.h libasm.a -o runme
rm *.o
./runme
