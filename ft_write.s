# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_write.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sherbert <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/12 03:27:34 by sherbert          #+#    #+#              #
#    Updated: 2020/11/12 03:27:40 by sherbert         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

segment .text
    global  ft_write

ft_write:
    mov     r8, rdx
    mov     rax, 0x02000004
    syscall
    jc      err
    jmp return

err:
    mov     rax, -1
    ret

return
    ret     rax, r8
