# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sherbert <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/12 02:13:54 by sherbert          #+#    #+#              #
#    Updated: 2020/11/12 02:13:57 by sherbert         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

segment .text
    global  ft_strlen

ft_strlen:
    mov     rax, 0
    jmp     count

count:
    cmp     BYTE [rdi + rax], 0
    je      return
    inc     rax
    jmp     count

return
    ret
