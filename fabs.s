.globl _afabs

_afabs:
	push %ebp
	mov %esp, %ebp
	mov 8(%ebp), %eax
	mov %eax, %edx
	sar $31, %eax
	jz reg
	neg %edx
reg:
	mov %edx, %eax
	pop %ebp
	ret
	