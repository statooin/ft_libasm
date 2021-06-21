#include "libasm.h"

# define STRLEN(x, t)			printf("`%s` = \t%s %ld (%ld)\n", x, t, ft_strlen(x), strlen(x));
# define STRCMP(a, b, t)		printf("`%s`:`%s` = \t%s %d\t (%d)\n", a, b, t, ft_strcmp(a, b), strcmp(a, b));
# define WRITE(s, x)		printf("^%ld (`%s`:%ld)\n", ft_write(STDOUT_FILENO, s, x), s, x);
# define READ(fd, b, x)			r = ft_read(fd, buffer, x); printf("`%s`:%ld\n", buffer, r);
# define DUP(s)				tmp = ft_strdup(s); printf("`%s` (`%s`)\n", tmp, s); free(tmp); tmp = NULL;

int	main()
{
	int		i;
	long	r;
	int	fd;
	char	buffer[100];
	char	*tmp;
	char	*tmp2;

	r = 0;
	i = 0;
	while (i < 100)
		buffer[i++] = 0;

	printf("--strlen\n");
	STRLEN("", "\t\t")
	STRLEN("toto", "\t")
	STRLEN("totototo", "\t")
	STRLEN("0123456789abcdef", "")
	STRLEN("42", "\t\t")
	STRLEN("1", "\t\t")
//	printf("`NULL` = \t%s %ld (%ld)\n", "", ft_strlen(NULL), strlen(NULL));
	printf("-done\n");

	printf("\n--strcmp\n");
	STRCMP("", "", "\t")
	STRCMP("toto", "toto", "")
	STRCMP("", "toto", "\t")
	STRCMP("toto", "", "\t")
	STRCMP("toto", "totobar", "" )
//	printf("`%s`:`NULL` = %d\n", "TOTO", strcmp("TOTO", NULL));
//	printf("`NULL`:`%s` = %d\n", "TOTO", strcmp(NULL, "TOTO"));
//	printf("`NULL`:`NULL` = %d\n", strcmp(NULL, NULL));
//	printf("`%s`:`NULL` = %d\n", "TOTO", ft_strcmp("TOTO", NULL));
//	printf("`NULL`:`%s` = %d\n", "TOTO", strcmp(NULL, "TOTO"));
//	printf("`NULL`:`NULL` = %d\n", strcmp(NULL, NULL));
	printf("-done\n");

	if ((fd = open("Makefile", O_RDONLY)) == -1)
		return (-1);
	printf("\n--read (Makefile)\n");
	READ(fd, buffer, 50)
	READ(fd, buffer, 25)
	READ(fd, buffer, 4)
	READ(fd, buffer, 26)
	READ(fd, buffer, 14)
	READ(fd, buffer, 0)
	close(fd);
	printf("-done\n");

	printf("\n--write\n");
	WRITE("toto", 4L)
	WRITE("totototo", 4L)
	WRITE("totototo", 8L)
	WRITE("toto", 2L)
	printf("-done\n");

	printf("\n--ft_strdup\n");
	tmp2 = ft_strdup("toto");
	DUP(tmp2)
	free(tmp2);
	DUP("totobar")
	DUP("long message")
	DUP("")
	//DUP(NULL)
	printf("-done\n");

	//printf ("ft_strcmp = %d\n", ft_strlen(test));
	return (0);
}
