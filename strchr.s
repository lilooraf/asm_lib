    section .text
    global astrchr

astrchr:
    push rbp
    mov rbp, rsp
    xor rax, rax
begin:
    mov cl, [rdi + rax]
    cmp cl, 0
    je end
    cmp cl, sil
    jne nope
    add rax, rdi
    leave
    ret
nope:
    inc rax
    jmp begin
end:
    xor rax, rax
    leave
    ret