SECTION .data

x: dd 10
y: dd 50
msg1: db "X is greater than Y",10,0
msg2: db "Y is greater than X",10,0

SECTION .text

extern printf
global main

main:

	push ebp
	mov ebp, esp

	mov eax, DWORD [x]
	mov ebx, DWORD [y]

	cmp eax, ebx ; cmp x , y
	jg .xGreaterThanY
	push DWORD msg2
	call printf
	jmp .done

.xGreaterThanY:
	push DWORD msg1
	call printf
	jmp .done 

.done:
	mov esp, ebp
	pop ebp
	ret
