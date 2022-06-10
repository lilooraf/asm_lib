    section .text
    global strcmp

strcmp:
    push rbp
    mov rbp, rsp
    xor rax, rax
    xor rcx, rcx
    xor rdx, rdx
begin:
    cmp byte[rsi + rax], 0
    je check
next:
    mov cl, [rsi + rax]
    mov bl, [rdi + rax]
    cmp bl, cl
    jne end
    inc rax
    jmp begin
check:
    cmp byte[rdi + rax], 0
    je end
    jmp next

end:
    sub rbx, rcx
    mov rax, rbx
    leave
    ret