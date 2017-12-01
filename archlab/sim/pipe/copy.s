	.file	"copy.c"
	.text
	.globl	ncopy
	.type	ncopy, @function
ncopy:
.LFB0:
	.cfi_startproc
	testq	%rdx, %rdx
	jle	.L5
	movl	$0, %ecx
	movl	$0, %eax
.L4:
	movq	(%rdi,%rcx,8), %r8
	movq	%r8, (%rsi,%rcx,8)
	testq	%r8, %r8
	setg	%r8b
	movzbl	%r8b, %r8d
	addq	%r8, %rax
	addq	$1, %rcx
	cmpq	%rdx, %rcx
	jne	.L4
	rep ret
.L5:
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	ncopy, .-ncopy
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.5) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
