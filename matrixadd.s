.globl _matrixadd
_matrixadd:
	push %ebp
	mov %esp, %ebp
	push %ebx
	push %esi
	push %edi #temp gogetter
	
	mov 8(%ebp), %eax # first ptr
	mov 12(%ebp), %ebx # second ptr

	mov $-1, %edx #outer counter
	mov $0, %ecx #inner counter
	
firstenter:
	add $1, %edx # increase outer counter
	mov $0, %ecx # reset inner counter
	cmp %edx, 20(%ebp) 		#check if first is dimention
	je exitfunc
secondenter:
	cmp %ecx, 24(%ebp) 		#check if second is in dimention
	je firstenter
	
	mov %edx, %esi 			# current outer
	imul 24(%ebp), %esi 	# get outer * dimention
	add %ecx, %esi 			# esi now holds offset off of pointers
	imul $4, %esi
	
	movl (%eax, %esi), %edi
	addl (%ebx, %esi), %edi # edi now holds result
	push %edx
	mov 16(%ebp), %edx #destination ptr
	movl %edi, (%edx, %esi) # moved result into respective position
	pop %edx
	
	add $1, %ecx
	jmp secondenter # reloop
exitfunc:

	pop %edi
	pop %esi
	pop %ebx
	pop %ebp
	ret
