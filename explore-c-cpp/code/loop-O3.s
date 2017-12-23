	.file	"loop.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	loop
	.type	loop, @function
loop:
.LFB0:
	.cfi_startproc
	movl	$10, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	loop, .-loop
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.5) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
