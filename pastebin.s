.globl _spets
_spets:                  
push %ebp
mov %esp, %ebp
mov $0, %ecx
mov $10, %eax

label:
cmp $10, %ecx
je jend
add %ecx, %eax
imul $2, %eax
add $1, %ecx
jmp label
jend:
pop %ebp
ret