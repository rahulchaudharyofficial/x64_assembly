;main1.asm

section .data
    msg db "Hello, World",10,0
    ;NL  db 0xa
section .bss
section .text
    global main
main:
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, 13
    syscall
    ;mov rax, 1
    ;mov rdi, 1
    ;mov rsi, NL
    ;mov rdx, 1
    ;syscall
    mov rax, 60
    mov rdi, 0
    syscall
