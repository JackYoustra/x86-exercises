.globl _search

_search:
	push %ebp
	mov %esp, %ebp #important
	mov 12(%ebp), %eax #length and counter
loopenter:
	cmp $0, %eax
	je notfound
	mov 8(%ebp), %ecx #put first element ptr here
	mov %eax, %edx
	imul $4, %edx
	mov (%ecx, %edx), %ecx
	cmp %ecx, 16(%ebp)
	je found
	sub $1, %eax
	jmp loopenter
notfound:
	mov $-1, %eax
	jmp exit
found:
	add $1, %eax #compensate from the starting from zero
exit:
	pop %ebp
	ret
	