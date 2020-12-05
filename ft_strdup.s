segment .text
    global  ft_strdup
    extern  malloc
    extern  ft_strlen
    extern  ft_strcpy

ft_strdup:
    call    ft_strlen
    inc     rax
    push    rdi
    mov     rdi, rax
    call    malloc
    pop     rdi
    mov     rsi, rdi
    mov     rdi, rax
    call    ft_strcpy
    ret
