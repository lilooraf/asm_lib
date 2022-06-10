    section .text
    global strncmp

strncmp:
    push rbp
    mov rbp, rsp
    xor rax, rax
begin:
    cmp rdx, rax
    je end
    cmp byte[rsi + rax], 0
    je check
next:
    mov cl, [rsi + rax]
    cmp [rdi + rax], cl
    jne end
    inc rax
    jmp begin
check:
    cmp byte[rdi + rax], 0
    je end
    jmp next
end:
    xor rcx, rcx
    xor rdx, rdx
    mov cl, [rsi + rax]
    mov bl, [rdi + rax]
    sub rbx, rcx
    mov rax, rbx
    leave
    ret