    section .text
    global rindex

rindex:
    push rbp
    mov rbp, rsp
    xor rax, rax
begin:
    mov r8b, [rdi + rbx]
    cmp r8b, sil
    jne _loop
    mov rcx, rbx
    add rbx, rdi
    mov rax, rbx
    mov rbx, rcx
    jmp _loop
_loop:
    inc rbx
    cmp r8b, 0
    je end
    jmp begin
end:
    leave
    ret