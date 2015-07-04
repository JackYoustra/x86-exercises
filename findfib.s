.globl _findfib

_findfib:
	push %ebp
	mov %esp, %ebp #important
	push %esi
	push %edi
	push %ebx 			# done with setup now
	movl $0, %esi 		# set up first fibonacci things
	movl $1, %edi		# second
	movl $1, %ebx		# total
	mov $2, %edx			# will be the register holding current iteration
	
startfibfind:
	cmp 8(%ebp), %edx
	je endstate
	mov %ebx, %eax 		# store the current value
	
	mov %esi, %ebx 		# get new value, store in 20th offset
	add %edi, %ebx
	
	mov %edi, %esi 		# move second depth
	mov %eax, %edi 		# move first depth
	
	add $1, %edx 			# increment loop counter
	jmp startfibfind
endstate:
	mov %ebx, %eax
	pop %ebx
	pop %edi
	pop %esi
	pop %ebp
	ret
	