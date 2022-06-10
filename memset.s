    section .text
    global memset

memset:
    push rbp
    mov rbp, rsp
    xor rax, rax
begin:
    cmp rax, rdx
    je end
    mov [rdi + rax], sil
    inc rax
    jmp begin
end:
    mov rax, rdi
    leave
    ret