SECTION .data

fmt1: db "The variable contains %d", 10,0

extern printf

SECTION .text
global main

main:

	push ebp
	mov ebp, esp


	mov DWORD  [ebp - 4], 15 ; local var 1
	push DWORD [ebp - 4]
	push fmt1

	call printf

	mov DWORD  [ebp - 8], 99 ; local var 2
	push DWORD [ebp - 8]
	push fmt1

	call printf

	mov esp, ebp
	pop ebp
	ret