    section .text
    extern malloc
    global memmove

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

memmove:
    push rbp
    mov rbp, rsp
    sub rsp, 32

    mov [rbp - 8], rdi
    mov [rbp - 16], rsi
    mov [rbp - 24], rdx

    mov rdi, rdx
    call malloc wrt ..plt
    mov rdi, rax
    mov rsi, [rbp - 16]
    mov rdx, [rbp - 24]
    call memcpy
    mov rdi, [rbp - 8]
    mov rsi, rax
    call memcpy
    leave
    ret