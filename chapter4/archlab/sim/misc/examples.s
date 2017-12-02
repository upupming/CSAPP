	.file	"examples.c"
	.text
	.globl	sum_list
	.type	sum_list, @function
sum_list:
.LFB0:
	.cfi_startproc
	movl	$0, %eax
	jmp	.L2
.L3:
	addq	(%rdi), %rax
	movq	8(%rdi), %rdi
.L2:
	testq	%rdi, %rdi
	jne	.L3
	rep ret
	.cfi_endproc
.LFE0:
	.size	sum_list, .-sum_list
	.globl	rsum_list
	.type	rsum_list, @function
rsum_list:
.LFB1:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L6
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	(%rdi), %rbx
	movq	8(%rdi), %rdi
	call	rsum_list
	addq	%rbx, %rax
	jmp	.L5
.L6:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	movl	$0, %eax
	ret
.L5:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1:
	.size	rsum_list, .-rsum_list
	.globl	copy_block
	.type	copy_block, @function
copy_block:
.LFB2:
	.cfi_startproc
	movl	$0, %eax
	jmp	.L10
.L11:
	movq	(%rdi), %rcx
	movq	%rcx, (%rsi)
	xorq	%rcx, %rax
	subq	$1, %rdx
	leaq	8(%rsi), %rsi
	leaq	8(%rdi), %rdi
.L10:
	testq	%rdx, %rdx
	jg	.L11
	rep ret
	.cfi_endproc
.LFE2:
	.size	copy_block, .-copy_block
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.5) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
