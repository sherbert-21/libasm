# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sherbert <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/12 02:56:48 by sherbert          #+#    #+#              #
#    Updated: 2020/11/12 02:56:50 by sherbert         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

segment .text
    global  ft_strcmp

ft_strcmp:
    mov     rax, 0
    jmp     cmp

cmp:
    mov     rax, [rdi]
    mov     r8, [rsi]
    cmp     rax, 0
    je      return
    cmp     r8, 0
    je      return
    cmp     rax, r8
    jne     return
    inc     rdi
    inc     rsi
    jmp     cmp

return
    sub     rax, r8
    ret
