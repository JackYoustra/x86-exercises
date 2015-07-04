.globl _findfib

_findfib:
	push %ebp
	mov %esp, %ebp 			# done with setup now
	movl $0, 12(%ebp) 		# set up first fibonacci things
	movl $1, 16(%ebp)		# second
	movl $1, 20(%ebp)		# total
	mov $2, %edx			# will be the register holding current iteration
	
startfibfind:
	cmp 8(%ebp), %edx
	je endstate
	mov 20(%ebp), %eax 		# store the current value
	
	mov 12(%ebp), %ebx
	mov %ebx, 20(%ebp) 		# get new value, store in 20th offset
	mov 16(%ebp), %ebx
	add %ebx, 20(%ebp)
	
	mov %ebx, 12(%ebp) 		# move second depth
	mov %eax, 16(%ebp) 		# move first depth
	
	add $1, %edx 			# increment loop counter
	jmp startfibfind
endstate:
	mov 20(%ebp), %eax
	pop %ebp
	ret
	