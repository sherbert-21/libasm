# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_read.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sherbert <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/12 03:27:47 by sherbert          #+#    #+#              #
#    Updated: 2020/11/12 03:27:51 by sherbert         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

segment .text
    global  ft_read

ft_read:
    mov     rax, 0x02000003
    syscall
    jc      err
    return

err:
    mov     rax, -1
    ret

return
    ret
