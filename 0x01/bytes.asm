SECTION .data

fmt1: db "Value of my i DB of 8 bits is %hhx", 10,0
fmt2: db "Value of my j DW of 18 bits is %c", 10,0
fmt3: db "Value of my k DD of 32 bits is %d", 10,0

i: db 0x55
j: dw 'A'
k: dd 99


; DB - Define Byte. (8 bits = 1 Bytes)
; DW - Define Word. (2 bytes) Generally 2 bytes on a typical x86 32-bit system
; DD - Define double word. (4 Bytes) Generally 4 bytes on a typical x86 32-bit system
; DQ - Double Quad Word. (8 bytes)
; DT - 
; DDQ
; DO

; 0 Terminator = \0
; 10 New Line = \n
; 13 Carriage return = \r

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