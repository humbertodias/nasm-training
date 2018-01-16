section	.text
	global _sum, _subtract, _multiply, _division, _divmod

_sum:

	push       rbp        ; Save address of previous stack frame
	
	mov        rax, rdi   ; 1st parameter to RAX
	mov        rbx, rsi   ; 2nd parameter to RBX

	add        rax, rbx   ; rbx = rax + rbx

	; epilog. restore stack pointer
	pop        rbp
	ret


_subtract:

	push       rbp        ; Save address of previous stack frame

	mov        rax, rdi   ; 1st parameter to RAX
	mov        rbx, rsi   ; 2nd parameter to RBX

	sub        rax, rbx   ; rbx = rax - rbx

	; epilog. restore stack pointer
	pop        rbp
	ret

_multiply:

	push       rbp        ; Save address of previous stack frame

	mov        rax, rdi   ; 1st parameter to RAX
	mov        rbx, rsi   ; 2nd parameter to RBX

	mul        rbx        ; 

	; epilog. restore stack pointer
	pop        rbp
	ret

_division:

	push       rbp        ; Save address of previous stack frame

	mov 	   rax, rdi   ; dividend
	mov 	   rcx, rsi   ; divisor

	mov 	   rdx, 0     ; clear dividend
	div 	   rcx        ; rax = accumulate, rdx = rest mod

	; epilog. restore stack pointer
	pop        rbp
	ret

_divmod:

	push       rbp        ; Save address of previous stack frame

	call _division

	mov 	   rax, rdx

	; epilog. restore stack pointer
	pop        rbp
	ret
