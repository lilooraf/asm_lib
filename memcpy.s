    section .text
    global memcpy

memcpy:
    push rbp
    mov rbp, rsp
    xor rax, rax
begin:
    cmp rax, rdx
    je end
    mov cl, [rsi + rax]
    mov [rdi + rax], cl
    inc rax
    jmp begin
end:
    mov rax, rdi
    leave
    ret