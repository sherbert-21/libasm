
segment .text
    global  _ft_strcmp

_ft_strcmp:
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

return:
    sub     rax, r8
    ret
