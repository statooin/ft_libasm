/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: statooin <statooin@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/05/21 17:08:52 by bjebedia          #+#    #+#             */
/*   Updated: 2020/11/09 20:03:20 by statooin         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H
# include <string.h>
# include <stdio.h>
# include <stdlib.h>
# include <unistd.h>
# include <stddef.h>
# include <fcntl.h>

size_t			ft_strlen(const char *s);
int				ft_strcmp(const char *string1, const char *string2);
char	*ft_strcpy(char *dst, char const *src);
char			*ft_strdup(const char *s1);
ssize_t	ft_write(int fd, void const *buf, size_t nbyte);

ssize_t	ft_read(int fd, void *buf, size_t nbyte);

#endif
