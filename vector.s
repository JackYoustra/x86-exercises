.globl _dotproduct
_dotproduct:
	push %ebp
	mov %esp, %ebp
	push %esi #temp mul
	push %edi #holds total
	push %ebx
	
	mov 8(%ebp), %eax #holds first ptr
	mov 12(%ebp), %ecx #holds second ptr, watch out for mul
	mov $0, %edx #holds count
	mov $0, %edi
	mov 16(%ebp), %ebx
	sall $2, %ebx

sumtop:
	cmp %edx, %ebx
	je endstate
	
	mov (%eax, %edx), %esi
	imul (%ecx, %edx), %esi #multiply the two vector parts
	
	add %esi, %edi
	
	add $4, %edx
	jmp sumtop
endstate:
	mov %edi, %eax
	pop %ebx
	pop %edi
	pop %esi
	pop %ebp
	ret
