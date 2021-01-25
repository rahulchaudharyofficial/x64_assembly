;alive.asm

section .data
    msg1 db "Hello World!",10,0 ;String with NL and 0
    msg1Len equ $-msg1-1 ;Measure the length of msg1 minus the 0

    msg2 db "Alive and Kicking!",10,0 ; String with New Line and 0
    msg2Len equ $-msg2-1
    radius dq 357 ;No string, not displayable?
    pi dq 3.14 ; No String, not displayable?

section .bss

section .text
    global main

main:
    push rbp ;function proposed
    mov rbp, rsp ; fuction proposed
    mov rax, 1 ; write
    mov rdi, 1 ; write to stdout
    mov rsi, msg1; string to display
    mov rdx, msg1Len ; length of string
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, msg2
    mov rdx, msg2Len
    syscall

    mov rsp, rbp
    pop rbp
    mov rax, 60,
    mov rdi, 0
    syscall