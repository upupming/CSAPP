	.file	"int-float.c"
	.text
	.globl	_Z9int_floatv
	.type	_Z9int_floatv, @function
_Z9int_floatv:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$45, -16(%rbp)
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -12(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2ss	-16(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-12(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -4(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_Z9int_floatv, .-_Z9int_floatv
	.section	.rodata
	.align 4
.LC0:
	.long	1078523331
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.5) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
