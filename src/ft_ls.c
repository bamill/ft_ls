/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_ls.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bmiller <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/05/23 16:04:32 by bmiller           #+#    #+#             */
/*   Updated: 2017/05/23 17:12:58 by bmiller          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_ls.h"
#include <stdio.h>

void		ft_ls(DIR *d)
{
    struct dirent	*dir;
    char			current[1024];

    if (!d)
        return ;
    while ((dir = readdir(d)) != NULL)
    {
        if (dir->d_name[0] != '.')
            printf("%s\n", dir->d_name);
    }
}
