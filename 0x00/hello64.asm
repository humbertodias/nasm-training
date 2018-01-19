section .text
        global  main
main:
    ; write(1, message, 13)
    mov     rax, 1                  ; system call 1 is write
    mov     rdi, 1                  ; file handle 1 is stdout
    mov     rsi, msg                ; address of string to output
    mov     rdx, len                ; number of bytes
    syscall                         ; invoke operating system to do the write

    ; exit(0)
    mov     eax, 60                 ; system call 60 is exit
    xor     rdi, rdi                ; exit code 0
    syscall                         ; invoke operating system to exit

section .data                   ;section declaration
        msg db     "Hello, world!", 10  ; note the newline at the end
        len equ    $ - msg              ;length of our dear string