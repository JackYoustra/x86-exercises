.globl _cubit

_cubit:
	push %ebp
	mov %esp, %ebp
	push 8(%ebp)
	call findfabs
	add $4, %esp
	mov %eax, %ecx
	imul %ecx, %eax
	imul %ecx, %eax
	pop %ebp
	ret

findfabs:
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
	