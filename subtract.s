.globl _subtract

_subtract:
	push %ebp
	mov %esp, %ebp
	mov 8(%ebp), %eax
	mov 12(%ebp), %ebx
	sub %ebx, %eax
	pop %ebp
	ret
	