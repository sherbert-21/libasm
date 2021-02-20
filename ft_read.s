

segment .text
    global  _ft_read

_ft_read:
    mov     rax, 0x02000003
    syscall
    jc      err
    ret

err:
    mov     rax, -1
    ret
