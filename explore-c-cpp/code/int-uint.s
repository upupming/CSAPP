	.file	"int-uint.c"
	.text
	.globl	_Z8int_uintv
	.type	_Z8int_uintv, @function
_Z8int_uintv:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$8, -16(%rbp)
	movl	$7, -12(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_Z8int_uintv, .-_Z8int_uintv
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.5) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
