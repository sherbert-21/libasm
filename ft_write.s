
segment .text
    global  _ft_write

_ft_write:
    mov     r8, rdx
    mov     rax, 0x02000004
    syscall
    jc      err
    jmp     return

err:
    mov     rax, -1
    ret

return:
    ret 
