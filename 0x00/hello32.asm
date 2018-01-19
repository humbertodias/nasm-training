section .text               ;section declaration
                            ;we must export the entry point to the ELF linker or
    global  main            ;loader. They conventionally recognize _start as their
			   ;entry point. Use ld -e foo to override the default.
main:
    ;write our string to stdout
    mov edx,len             ;third argument: message length
    mov ecx,msg             ;second argument: pointer to message to write
    mov ebx,1               ;first argument: file handle (stdout)
    mov eax,4               ;system call number (sys_write)
    int 0x80                ;call kernel

    ; exit(0)
    mov ebx,0               ;first syscall argument: exit code
    mov eax,1               ;system call number (sys_exit)
    int 0x80                ;call kernel

section .data               ;section declaration

msg db  "Hello, world!",10 ;our dear string
len equ $ - msg             ;length of our dear string