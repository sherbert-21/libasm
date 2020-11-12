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