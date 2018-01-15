section	.text
	global sum, subtract, multiply, division, divmod

sum:

	push       rbp        ; Save address of previous stack frame
	
	mov        rax, rdi   ; 1st parameter to RAX
	mov        rbx, rsi   ; 2nd parameter to RBX

	add        rax, rbx   ; rbx = rax + rbx

	; epilog. restore stack pointer
	pop        rbp
	ret


subtract:

	push       rbp        ; Save address of previous stack frame

	mov        rax, rdi   ; 1st parameter to RAX
	mov        rbx, rsi   ; 2nd parameter to RBX

	sub        rax, rbx   ; rbx = rax - rbx

	; epilog. restore stack pointer
	pop        rbp
	ret

multiply:

	push       rbp        ; Save address of previous stack frame

	mov        rax, rdi   ; 1st parameter to RAX
	mov        rbx, rsi   ; 2nd parameter to RBX

	mul        rbx        ; 

	; epilog. restore stack pointer
	pop        rbp
	ret

division:

	push       rbp        ; Save address of previous stack frame

	mov 	   rax, rdi   ; dividend
	mov 	   rcx, rsi   ; divisor

	mov 	   rdx, 0     ; clear dividend
	div 	   rcx        ; rax = accumulate, rdx = rest mod

	; epilog. restore stack pointer
	pop        rbp
	ret

divmod:

	push       rbp        ; Save address of previous stack frame

	call division

	mov 	   rax, rdx

	; epilog. restore stack pointer
	pop        rbp
	ret
