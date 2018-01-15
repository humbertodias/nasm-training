section	.text
	global sum, subtract, multiply, division, divmod

sum:

	push       ebp       ; Save address of previous stack frame
	mov    ebp,esp

	mov    eax, [ebp+8]  ; 1st parameter to eax
	mov    edx, [ebp+12] ; 2nd parameter to edx
	add    eax,edx

	; epilog. restore stack pointer
	pop        ebp
	ret


subtract:

	push       ebp       ; Save address of previous stack frame
	mov    ebp,esp

	mov    eax, [ebp+8]  ; 1st parameter to eax
	mov    edx, [ebp+12] ; 2nd parameter to edx

	sub    eax, edx      ; eax = eax - edx

	; epilog. restore stack pointer
	pop        ebp
	ret

multiply:

	push       ebp       ; Save address of previous stack frame
	mov    ebp,esp

	mov    eax, [ebp+8]  ; 1st parameter to eax
	mov    edx, [ebp+12] ; 2nd parameter to edx

	mul    edx           ; eax = eax * edx

	; epilog. restore stack pointer
	pop        ebp
	ret

division:

	push       ebp       ; Save address of previous stack frame
	mov    ebp,esp

	mov    eax, [ebp+8]  ; 1st parameter to eax as dividend
	mov    ecx, [ebp+12] ; 2nd parameter to edx as divisor

	mov    edx, 0        ; clear dividend
	div    ecx           ; eax = accumulate, edx = rest mod

	; epilog. restore stack pointer
	pop        ebp
	ret

divmod:

	push       ebp        ; Save address of previous stack frame
	mov    ebp,esp

	mov    eax, [ebp+8]   ; 1st parameter to eax as dividend
	mov    ecx, [ebp+12]  ; 2nd parameter to edx as divisor

	mov    edx, 0         ; clear dividend
	div    ecx            ; eax = accumulate, edx = rest mod

	mov    eax, edx

	; epilog. restore stack pointer
	pop        ebp
	ret
