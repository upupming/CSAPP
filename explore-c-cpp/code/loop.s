	.file	"loop.c"
	.text
	.globl	_Z4loopv
	.type	_Z4loopv, @function
_Z4loopv:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, -8(%rbp)
.L3:
	cmpl	$4, -8(%rbp)
	jg	.L2
	movl	-8(%rbp), %eax
	addl	%eax, -4(%rbp)
	addl	$1, -8(%rbp)
	jmp	.L3
.L2:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_Z4loopv, .-_Z4loopv
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.5) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
