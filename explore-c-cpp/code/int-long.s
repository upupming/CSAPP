	.file	"int-long.c"
	.text
	.globl	_Z8int_longv
	.type	_Z8int_longv, @function
_Z8int_longv:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$-1, -24(%rbp)
	movq	$6, -16(%rbp)
	movl	-24(%rbp), %eax
	cltq
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movl	%eax, -20(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_Z8int_longv, .-_Z8int_longv
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.5) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
