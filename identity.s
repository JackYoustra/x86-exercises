.globl _identity

_identity:
	push %ebp
	mov %esp, %ebp
	mov 8(%ebp), %eax
	pop %ebp
	ret
	