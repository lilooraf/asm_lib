    section .text
    global strcasecmp

strcasecmp:
    push rbp
    mov rbp, rsp
    xor rax, rax
    xor rcx, rcx
    xor rdx, rdx
begin:
    cmp byte[rsi + rax], 0
    je check
continue:
    mov cl, [rsi + rax]
    mov bl, [rdi + rax]
    jmp switch_up
next:
    cmp cl, 97
    jl _cmp
    cmp cl, 122
    jg _cmp
    sub cl, 32
    jmp _cmp
_cmp:
    cmp bl, cl
    jne end
    inc rax
    jmp begin

switch_up:
    cmp bl, 97
    jl next
    cmp bl, 122
    jg next
    sub bl, 32
    jmp next

check:
    cmp byte[rdi + rax], 0
    je end
    jmp continue

end:
    sub rbx, rcx
    mov rax, rbx
    leave
    ret