SECTION .data

fmt1: db "Arg Count = %d", 10,0
fmt2: db "Arg = %s", 10,0

SECTION .text ; asm code

; allow access to printf
extern printf

; make our main avaiable externally
global main

main: ; int main(int argc, char *argv[])

	push ebp
	mov ebp, esp

	; printf argc
	push DWORD[ebp + 8 ]
	push fmt1
	call printf

	mov eax, DWORD[ebp + 8 ] ; point to argc
	mov ebx, DWORD[ebp + 12] ; point to argv
	mov ecx, 0

beginLooping:
; always preserve values prior to calling external

	push ebx ; preserve ebx; holds our argument address
	push eax ; preserve eax; holds number of arguments
	push ecx ; preserve ecx; holds the counter

	; printf argv
	push DWORD [ebx]
	push fmt2
	call printf
	add esp, 8 ; clean up the stack


	; always restore in backwards order
	pop ecx ; restore counter
	pop eax ; restore number of arguments
	pop ebx ; restore the address

	inc ecx    ; increase our counter by one
	add ebx, 4 ; move to next arvument in the array

	cmp ecx, eax     ; if ecx not equal to eax
	jne beginLooping ; jmp to loop else, exit

	mov esp, ebp
	pop ebp
	ret