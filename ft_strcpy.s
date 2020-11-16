segment .text
    extern  ft_strlen
    extern  ft_strcpy

ft_strcpy:
    push    rdi
    mov     rdi, rsi
    call    ft_strlen
    mov     rcx, rax
    pop     rdi
    cld
    move    rax, rdi
    rep     movsb
    mov     BYTE [rdi], 0s
    ret
