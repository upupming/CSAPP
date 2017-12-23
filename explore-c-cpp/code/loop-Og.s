	.file	"loop.c"
	.text
	.globl	loop
	.type	loop, @function
loop:
.LFB0:
	.cfi_startproc
	movl	$0, %edx
	jmp	.L2
.L3:
	addl	%edx, %eax
	addl	$1, %edx
.L2:
	cmpl	$4, %edx
	jle	.L3
	rep ret
	.cfi_endproc
.LFE0:
	.size	loop, .-loop
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.5) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
