.globl _derefint
_derefint:
	push %ebp
	mov %esp, %ebp
	mov 8(%ebp), %eax
	mov (%eax), %eax
	pop %ebp
	ret
