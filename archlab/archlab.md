# ArchLab
```
			姓名：李一鸣 							学号：1160300625
```

## Handout Instructions
根据sim下的README文档， 对Makefile进行修改。  
取消Makefile中GUI版的注释：
> GUIMODE=-DHAS_GUI

在ubuntu下，运行命令找到对应的TKLIBS：
> 1160300625@ubuntu:/usr/lib/x86_64-linux-gnu$ ls | grep libtcl

输出是：
> libtcl8.6.so  
> libtcl8.6.so.0

因此可以将Makefile中的TKLIBS做相应修改：
> TKLIBS=-L/usr/lib/x86_64-linux-gnu -ltk -ltcl  

接着安装Tcl、Tk开发文件：
> $ sudo apt install tcl8.6-dev tk8.6-dev

同样，经过查询资料与命令验证：
> 1160300625@ubuntu:/usr/include/tcl8.6$ ls | grep tcl.h

输出为：
> tcl.h

Makefile做相应修改：
> TKINC=-isystem /usr/include/tcl8.6

经过我的反复测试，还需要安装flex、bison：
> $ sudo apt install flex bison

修改好后，执行下面的命令：
> make clean; make

报出如下错误：
> psim.c:853:8: error: ‘Tcl_Interp {aka struct Tcl_Interp}’ has no member named ‘result’
  interp->result = "No arguments allowed";

Tcl_Interp很明显是在tcl.h中定义的，怎么会没有result成员呢？于是看看tcl.h中到底怎样写的：
> $ vi /usr/include/tcl8.6/tcl.h 

找到Tcl_Interp的定义如下：
```c
typedef struct Tcl_Interp
#ifndef TCL_NO_DEPRECATED
{
    /* TIP #330: Strongly discourage extensions from using the string
     * result. */
#ifdef USE_INTERP_RESULT
    char *result TCL_DEPRECATED_API("use Tcl_GetStringResult/Tcl_SetResult");
                                /* If the last command returned a string
                                 * result, this points to it. */
    void (*freeProc) (char *blockPtr)
            TCL_DEPRECATED_API("use Tcl_GetStringResult/Tcl_SetResult");
                                /* Zero means the string result is statically
                                 * allocated. TCL_DYNAMIC means it was
                                 * allocated with ckalloc and should be freed
                                 * with ckfree. Other values give the address
                                 * of function to invoke to free the result.
                                 * Tcl_Eval must free it before executing next
                                 * command. */
#else
    char *resultDontUse; /* Don't use in extensions! */
    void (*freeProcDontUse) (char *); /* Don't use in extensions! */
#endif
#ifdef USE_INTERP_ERRORLINE
    int errorLine TCL_DEPRECATED_API("use Tcl_GetErrorLine/Tcl_SetErrorLine");
                                /* When TCL_ERROR is returned, this gives the
                                 * line number within the command where the
                                 * error occurred (1 if first line). */
#else
    int errorLineDontUse; /* Don't use in extensions! */
#endif
}
#endif /* TCL_NO_DEPRECATED */
Tcl_Interp;
```
可以看出这是tcl8.6优化的缘故，可能会定义result或者resultDontUse两者之一，因此不一定有result成员，故考虑使用tcl8.5。
> sudo apt install tcl8.5-dev tk8.5-dev

同样需要修改Makefile：
> TKINC=-isystem /usr/include/tcl8.5

不幸的是， 还有错误：
>  Building the pipe-std.hcl version of PIPE  
../misc/hcl2c -n pipe-std.hcl < pipe-std.hcl > pipe-std.c  
gcc -Wall -O2 -isystem /usr/include/tcl8.5 -I../misc -DHAS_GUI -o psim psim.c pipe-std.c \  
	../misc/isa.c -L /usr/lib/x86_64-linux-gnu -ltk -ltcl -lm  
/usr/bin/ld: cannot find -ltk  
/usr/bin/ld: cannot find -ltcl  

查阅资料得知，这是参数错误引起的。也就是说-ltk、-ltcl不是合法参数，对Makefile做如下修改：
> TKLIBS=-L /usr/lib/x86_64-linux-gnu -ltk8.5 -ltcl8.5

最终执行：
> make clean; make

这下终于make成功了。

## Part A
先用下面的命令得到C代码的x86-64汇编代码：
> 1160300625@ubuntu:~/hitcis/lab5/sim/misc$ gcc -Og -S examples.c

得到的汇编代码如下：
```assembly
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
```
### A-1 sum.ys: Iteratively sum linked list elements(迭代求和)
根据x86-64代码，很容易得出Y86-64代码：
```assembly
# Execution begins at address 0
	.pos 0
	irmovq	stack, %rsp		# Setup stack pointer
	call main				# Execute main program
	halt					# Terminate program

# Sample linked list
.align 8
ele1:
	.quad 0x00a
	.quad ele2
ele2:
	.quad 0x0b0
	.quad ele3
ele3:
	.quad 0xc00
	.quad 0

main:
	irmovq	ele1, %rdi
	call	sum_list		# sum_list(ele1)
	ret

# long sum_list(list_ptr ls)
# ls in %rdi
sum_list:
	irmovq	$0, %rax
	jmp		loop_test
loop:
	mrmovq	(%rdi), %r8		
	addq	%r8, %rax		# add ls->val to val
	mrmovq	8(%rdi), %rdi	# update %rdi to ls->next
loop_test:
	andq	%rdi, %rdi		
	jne		loop			# if ls!=NULL, loop
	ret

# Stack starts here and grows to lower adderss
	.pos	0x200
stack:

```
在上述代码中根据题目要求编写了main函数对函数进行测试。  
下面用YAS(Y86-64 Assember)汇编器进行汇编：
> ~/hitcis/lab5/sim/misc$ ./yas sum.ys 

再用YIS(Y86-64 instruction set simulator)指令集模拟器模拟程序的执行：
> ~/hitcis/lab5/sim/misc$ ./yis sum.yo

结果如下：
> Stopped in 26 steps at PC = 0x13.  Status 'HLT', CC Z=1 S=0 O=0  
> Changes to registers:  
> %rax:	0x0000000000000000	0x0000000000000cba  
> %rsp:	0x0000000000000000	0x0000000000000200  
> %r8:	0x0000000000000000	0x0000000000000c00  
>   
> Changes to memory:  
> 0x01f0:	0x0000000000000000	0x000000000000005b  
> 0x01f8:	0x0000000000000000	0x0000000000000013  

可以看到没有任何error并且最终%rax的值为0xcba，结果正确。

### A-2  rsum.ys: Recursively sum linked list elements(递归求和)
同样根据x86-64代码，很容易得到Y86-64代码：
```assembly
# Execution begins at address 0
	.pos	0
	irmovq	stack, %rsp
	call	main
	halt

# Sample linked list
.align 8
ele1:
    .quad 0x00a
    .quad ele2
ele2:
    .quad 0x0b0
    .quad ele3
ele3:
    .quad 0xc00
    .quad 0

main:
	irmovq	ele1, %rdi
	call	rsum_list
	ret

# long rsum_list(list_ptr ls)
# ls in %rdi
rsum_list:
	andq	%rdi, %rdi
	je		return_0		# if ls==NULL, return_0
	mrmovq	(%rdi), %r8		# ls->val
	mrmovq	8(%rdi), %rdi	# ls = ls->next
	pushq	%r8
	call	rsum_list		# recursive
	popq	%r8
	addq	%r8, %rax		# ls->val + rsum_list(ls->next)
	ret
return_0:
	irmovq	$0, %rax
	ret
	
# Stack starts here and grows to lower address
	.pos	0x200
stack:

```
测试：
> $ ./yas rsum.ys  
> $ ./yis rsum.yo

结果如下：
> Stopped in 37 steps at PC = 0x13.  Status 'HLT', CC Z=0 S=0 O=0  
> Changes to registers:   
> %rax:	0x0000000000000000	0x0000000000000cba  
> %rsp:	0x0000000000000000	0x0000000000000200  
> %r8:	0x0000000000000000	0x000000000000000a  
>   
> Changes to memory:  
> 0x01c0:	0x0000000000000000	0x0000000000000086  
> 0x01c8:	0x0000000000000000	0x0000000000000c00  
> 0x01d0:	0x0000000000000000	0x0000000000000086  
> 0x01d8:	0x0000000000000000	0x00000000000000b0  
> 0x01e0:	0x0000000000000000	0x0000000000000086  
> 0x01e8:	0x0000000000000000	0x000000000000000a  
> 0x01f0:	0x0000000000000000	0x000000000000005b  
> 0x01f8:	0x0000000000000000	0x0000000000000013  







### A-3 copy.ys: Copy a source block to a destination block
根据x86-64代码和体中所给的测试用例，写出如下的Y86-64代码：
```assembly
# Execution begins at address 0
	.pos	0
	irmovq	stack, %rsp
	call	main
	halt

# Source block
	.align 8
src:
	.quad 0x00a
	.quad 0x0b0
	.quad 0xc00
# Destination block
dest:
	.quad 0x111
	.quad 0x222
	.quad 0x333
	
main:
	irmovq	src, %rdi
	irmovq	dest, %rsi
	irmovq	$3, %rdx
	call	copy_block
	ret

# long copy_block(long *src, long *dest, long len)
# src in %rdi, dest in %rsi, len in %rdx
copy_block:
	irmovq	$0, %rax
	jmp		test_len
copy_loop:
	mrmovq	(%rdi), %rcx
	rmmovq	%rcx, (%rsi)		# src to dest
	xorq	%rcx, %rax			# result ^= val
	irmovq	$1, %r8
	subq	%r8, %rdx			# len--
	irmovq	$8, %r8
	addq	%r8, %rsi
	addq	%r8, %rdi
test_len:
	andq	%rdx, %rdx
	jg		copy_loop
	ret
	
	.pos	0x200
stack:

```
运行：
> ./yas copy.ys  
> ./yis copy.yo

输出结果为：
> Stopped in 43 steps at PC = 0x13.  Status 'HLT', CC Z=1 S=0 O=0  
> Changes to registers:  
> %rax:	0x0000000000000000	0x0000000000000cba  
> %rcx:	0x0000000000000000	0x0000000000000c00  
> %rsp:	0x0000000000000000	0x0000000000000200  
> %rsi:	0x0000000000000000	0x0000000000000048   
> %rdi:	0x0000000000000000	0x0000000000000030  
> %r8:	0x0000000000000000	0x0000000000000008  
>   
> Changes to memory:  
> 0x0030:	0x0000000000000111	0x000000000000000a  
> 0x0038:	0x0000000000000222	0x00000000000000b0  
> 0x0040:	0x0000000000000333	0x0000000000000c00  
> 0x01f0:	0x0000000000000000	0x000000000000006f  
> 0x01f8:	0x0000000000000000	0x0000000000000013  

可以看到，dest内存部分已经被修改成了与src相同的值。

## Part B
题目要求修改sim/seq下的`seq-full.hc`来实现课本中的iaddq指令，并在前面注释中写上自己的学号、姓名以及iaddq的计算过程。  
在`seq-full.hc`中有下面的定义：
> \# Instruction code for iaddq instruction  
> wordsig IIADDQ	'I_IADDQ'

在其头文件`isa.h`中又有`I_IADDQ`的定义：
> /* Different instruction types */  
> typedef enum { I_HALT, I_NOP, I_RRMOVQ, I_IRMOVQ, I_RMMOVQ, I_MRMOVQ,  
> 	       I_ALU, I_JMP, I_CALL, I_RET, I_PUSHQ, I_POPQ,  
> 	       I_IADDQ, I_POP2 } itype_t;  

可见`I_IADDQ`被定义为十六进制值C。  

接下来根据家庭作业4.51的结果对各阶段进行修改：
1. 取值


2. 

