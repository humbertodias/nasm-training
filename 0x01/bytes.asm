SECTION .data

fmt1: db "Value of my i DB of 8 bits is %hhx", 10,0
fmt2: db "Value of my j DW of 18 bits is %c", 10,0
fmt3: db "Value of my k DD of 32 bits is %d", 10,0

i: db 0x55
j: dw 'A'
k: dd 99


; DB - Define Byte. 8 bits
; DW - Define Word. Generally 2 bytes on a typical x86 32-bit system
; DD - Define double word. Generally 4 bytes on a typical x86 32-bit system
; DQ
; DT
; DDQ
; DO

extern printf

SECTION .text ; asm code
global main

main:

	push ebp
	mov ebp, esp

	; printf(fmt,value)
	push DWORD [i]
	push fmt1
	call printf


	; printf(fmt,value)
	push DWORD [j]
	push fmt2
	call printf

	; printf(fmt,value)
	push DWORD [k]
	push fmt3
	call printf

	mov esp, ebp
	pop ebp
	ret