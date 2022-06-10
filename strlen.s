    section .text
    global strlen

strlen:
    push rbp
    mov rbp, rsp
    xor rax, rax
loop_strlen:
    mov cl, [rdi + rax]
    cmp cl, 0
    je end
    inc rax
    jne loop_strlen

end:
    leave
    ret