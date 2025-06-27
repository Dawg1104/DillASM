; hello.asm (64-bit NASM example)
section .data
    msg db "Hello, world!", 0

section .text
    extern printf
    global main

main:
    sub rsp, 40             ; shadow space
    lea rcx, [rel msg]      ; first argument to printf
    call printf
    add rsp, 40
    ret