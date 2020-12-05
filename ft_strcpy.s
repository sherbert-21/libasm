segment .text
    extern  ft_strcpy

ft_strcpy:
    mov     rax, 0

cpy:
    mov     cl, BYTE [rsi + rax]
    mov     byte [rdi + rax], cl
    cmp     cl, 0
    je      return
    inc     rax
    jmp     cpy

return:
    movsx   rax, cl
    movsx   rdx, dl
    mov     rax, rdi
    ret
