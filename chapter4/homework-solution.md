# 第4章 处理器体系结构 作业
## 4.46 
A. 从练习题4.8的返回值总是0xabcd可推断出在x86-64中pop %rsp将%rsp设置为从内存中读出来的那个值，而不是本身加8后的值。本题中的代码违背了这个规则。
B. 可改成如下代码：
```assembly
addq $8, %rsp
movq -8(%rsp), REG 
```
## 4.47
A. 模仿题中给的数组形式代码，得出指针形式的代码如下：
```c
/* Bubble sort: Pointer version */
void bubble_b(long* data, long count){
	long i, last;
	for(last = count-1; last >0; last--){
		for(long* i = data; i < data+last; i++){
			if(*(i+1) < *i){
				/* Swap adjacent elements */
				long t = *(i+1);
				*(i+1) = *(i);
				*(i) = t;
			}
		}
	}
}
```
B. 为得到上述代码的Y86-64程序，先将其编译成X86-64代码：
```assembly
	.file	"bubbleSortUsingPointers.c"
	.text
	.globl	bubble_b
	.type	bubble_b, @function
bubble_b:
.LFB0:
	.cfi_startproc
	subq	$1, %rsi
	jmp	.L2
.L4:
	movq	8(%rax), %rdx
	movq	(%rax), %rcx
	cmpq	%rcx, %rdx
	jge	.L3
	movq	%rcx, 8(%rax)
	movq	%rdx, (%rax)
.L3:
	addq	$8, %rax
	jmp	.L5
.L6:
	movq	%rdi, %rax
.L5:
	leaq	(%rdi,%rsi,8), %rdx
	cmpq	%rdx, %rax
	jb	.L4
	subq	$1, %rsi
.L2:
	testq	%rsi, %rsi
	jg	.L6
	rep ret
	.cfi_endproc
.LFE0:
	.size	bubble_b, .-bubble_b
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.5) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
```

模拟上面的x86-64代码，手工编写出下面的Y86-64代码：
```assembly
# void bubble_b(long *data, long count)
# data in %rdi, count in %rsi
bubble_b:
	irmovq	$1, %r8
	subq	%r8, %rsi		# count--
	jmp		outer_judge
inner_loop:
	mrmovq	8(%rax), %rdx	# *(i+1)
	mrmovq	0(%rax), %rcx	# *(i)
	rrmovq	%rdx, %r9
	subq	%rcx, %r9
	jge		inner_incre
	rmmovq	%rcx, 8(%rax)
	rmmovq	%rdx, (%rax)
inner_incre:
	irmovq	$8, %r10
	addq	%r10, %rax
	jmp		inner_judge
outer_loop:
	rrmovq	%rdi, %rax		# i = data
inner_judge:
	addq	%rsi, %rsi		# 2*%rsi
	addq	%rsi, %rsi		# 4*%rsi
	addq	%rsi, %rsi		# 8*%rsi
	addq	%rsi, %rdi
	rrmovq	%rdi, %rdx		# last = last--
	subq	%rax, %rdx
	jg		inner_loop		# if i < data+last, goto inner_loop
	subq	%r8, %rsi		# last--
outer_judge:
	andq 	%rsi, %rsi
	jg		outer_loop
	ret
```

## 4.48 
不使用跳转，最多使用三次条件传送，实现冒泡函数6-11行的测试与交换：
```assembly
inner_loop:
	mrmovq	8(%rax), %rdx	# *(i+1)
	mrmovq	0(%rax), %rcx	# *(i)
	rrmovq	%rdx, %r9
	subq	%rcx, %r9
	rmmovq	%rcx, 8(%rax)
	rmmovq	%rdx, (%rax)
	cmovge	%rdx, 8(%rax)		#关键在此，再次交换回来
	cmovge	%rcx, (%rax) 
```

## 4.50
switch的跳转表实现：Y86-64指令集不包含间接跳转指令（jmp *.L4(,%rsi,8)），可以把计算好的地址入栈，再执行ret指令。
首先根据题中所给的C代码编译出x86-64汇编代码：
```assembly
.file	"450.c"
	.text
	.globl	switchv
	.type	switchv, @function
switchv:
.LFB23:
	.cfi_startproc
	cmpq	$2, %rdi
	je	.L7
	cmpq	$2, %rdi
	jg	.L4
	testq	%rdi, %rdi
	je	.L5
	jmp	.L2
.L4:
	cmpq	$3, %rdi
	je	.L6
	cmpq	$5, %rdi
	je	.L7
	jmp	.L2
.L5:
	movl	$2730, %eax
	ret
.L6:
	movl	$3276, %eax
	ret
.L2:
	movl	$3549, %eax
	ret
.L7:
	movl	$3003, %eax
	ret
	.cfi_endproc
.LFE23:
	.size	switchv, .-switchv
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"idx = %ld, val = 0x%lx\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movl	$0, %ebx
	jmp	.L9
.L10:
	leaq	-1(%rbx), %rbp
	movq	%rbp, %rdi
	call	switchv
	movq	%rax, %rcx
	movq	%rbp, %rdx
	movl	$.LC0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	addq	$1, %rbx
.L9:
	cmpq	$7, %rbx
	jle	.L10
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE24:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.5) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
```
在x86-64代码基础上，手工编写Y86-64的代码：
```assembly
   	.pos	0
switchv:
	rrmovq	%rdi, %r8	# 0x000, +2
	irmovq	$2, %r15	# 0x002, +a
	subq	%r15, %r8		# 0x00c, +2
	mrmovq	$32(jt), %r8# case_2_5	0x00e, +a
	mrmovq	(jt), %r9	# case_3_5	0x018, +a
	cmove	%r8, %r11	# if idx==2, return to case_2_5		0x22, +2
	cmovg	%r9, %r11	# if idx>2, return to case_3_5		0x24, +2
	andq	%rdi, %rdi	#									0x26, +2
	mrmovq	$8(jt), %r10	# 0x28, +a
	cmove	%r10, %r11	# if idx==0, return to case_0	# 0x32, +2
	push	%r11		#	0x34, +2
	ret					#	0x36, +1
	mrmovq	$24(jt), %r11# else, return to case_default		0x37, +a
	push	%r11		#	0x41, +2
	ret					#	0x43, +1
case_3_5:
	rrmovq	%rdi, %r8	#	0x44, +2
	irmovq	$3, %r16	#	0x46, +a
	subq	%r16, %r8	#	0x50, +2
	mrmovq	$16(jt), %r8#	0x52, +a
	cmove	%r8, %r11	# if idx==3, return to case_3	0x5c, +2
	rrmovq	%rdi, %r8	# 0x5e, +2
	subq	$5, %r8		# 0x60, +2
	mrmovq	$32(jt), %r9# 0x62, +10
	cmove	%r9, %r11	# if idx==5, return to case_2_5	0x6c, +2
	push	%r11		# 0x6e, +2
	ret					# 0x70, +1
	mrmovq	$24(jt), %r11# else return to case_default	0x71, +a
	push	%r11		#	0x7b, +2
	ret					#	0x7d, +1
case_0:
	irmovq	$2730, %rax	#	0x7e, +a
	ret					#	0x88, +1
case_3:
	irmovq	$3276, %rax	#	0x89, +a
	ret					#	0x93, +1
case_default:
	irmovq	$3549, %rax	#	0x94, +a
	ret					#	0x9e, +1
case_2_5:
	irmovq	$3003, %rax	#	0x9f, +a
	ret					#	0xa9, +1

jt:
	.quad 0x0001000100000000	# case_3_5(01000100)	0xaa, +8
	.quad 0x1110110100000000	# case_0(01111011)	0xb2, +8
	.quad 0x0110001000000000	# case_3(10001001)	0xba, +8
	.quad 0x0001011000000000	# case_default(10010100)	0xc2, +8
	.quad 0x1111011000000000	# case_2_5(10011111)		0xca, +8
```

## 4.51
只把iaadq的各阶段计算写一下：

|  阶段|                   iaddq V, rB|
|------|------------------------------|
|  取指|icode:ifun ← M<sub>1</sub>[PC]<br> rA:rB ← M<sub>1</sub>[PC+1]<br> valC ← M<sub>8</sub>[PC+2]<br> valP ← PC+10|
|  译码|valB ← R[rB]    |
|  执行|valE ← valB+valC<br> Set CC|
|  访存|                |
|  写回|R[rB] ← valE    |
|更新PC|PC ← valP       |

## 4.52
SEQ的iaddq指令见实验报告《Archlab》中的[Part B](https://github.com/upupming/CSAPP/tree/master/archlab#b-1-修改seq-fullhcl以加入iaddq指令)。  

## 4.54
PIPE的iaddq已在实验《Archlab》[Part C](https://github.com/upupming/CSAPP/tree/master/archlab#c-1-修改pipe-fullhcl以加入iaddq指令)中实现。  

## 4.56 
要求反向选择(backward taken)、正向不选择(forward not-taken)。  
这种策略的成功率大约为65%。  
`pipe-btfnnt.hcl`声明如下：

```assembly
##### Jump conditions referenced explicitly
wordsig UNCOND 'C_YES'       	     # Unconditional transfer
```

先将`pipe-btfnnt.hcl`重命名为`original-pipe-btfnnt.hcl`

依题意对`pipe-btfnnt.hcl`有如下修改：
+ `f_pc`的修改：
	```
  word f_pc = [
      # Mispredicted branch.  Fetch at incremented PC
      # 1. backward taken error
      M_icode == IJXX && M_ifun != UNCOND && M_valE < M_valA && !M_Cnd : M_valA;

      # 2. forward not-taken error
  +	M_icode == IJXX && M_ifun != UNCOND && M_valE >= M_valA && M_Cnd : M_valE;

      # Completion of RET instruction
      W_icode == IRET : W_valM;
      # Default: Use predicted value of PC
      1 : F_predPC;
  ];
  ```

+ `f_predPC`的修改：
  ```
  # Predict next value of PC
  word f_predPC = [
      # BBTFNT: This is where you'll change the branch prediction rule
      # 3. 后向选择
      f_icode == IJXX && f_ifun != UNCOND && f_valC < f_valP : f_valC;
      # 4. 前向不选择
      f_icode == IJXX && f_ifun != UNCOND && f_valC >= f_valP : f_valP;
      f_icode in { IJXX, ICALL } : f_valC;
      1 : f_valP;
  ];
  ```

+ `aluA`的修改：
  ```
  # BBTFNT: When some branches are predicted as not-taken, you need some
  # way to get valC into pipeline register M, so that
  # you can correct for a mispredicted branch.

  ## pass valC by M_valE, pass valP by M_valA
  ## Select input A to ALU
  word aluA = [
      E_icode in { IRRMOVQ, IOPQ } : E_valA;
      E_icode in { IIRMOVQ, IRMMOVQ, IMRMOVQ } : E_valC;
      E_icode in { ICALL, IPUSHQ } : -8;
      E_icode in { IRET, IPOPQ } : 8;
      # 5. 以便从错误中恢复
      E_icode in { IJXX } : E_valC;
      # Other instructions don't need ALU
  ];
  ```

+ `D_bubble`的修改：
  ```
  bool D_bubble =
      # Mispredicted branch
      # (E_icode == IJXX && !e_Cnd) ||
      # 6. 修改
      (E_icode == IJXX && E_ifun != UNCOND && E_valC < E_valA && !e_Cnd) ||
      (E_icode == IJXX && E_ifun != UNCOND && E_valC >= E_valA && e_Cnd)  ||
      # BBTFNT: This condition will change
      # Stalling at fetch while ret passes through pipeline
      # but not condition for a load/use hazard
      !(E_icode in { IMRMOVQ, IPOPQ } && E_dstM in { d_srcA, d_srcB }) &&
        IRET in { D_icode, E_icode, M_icode };
  ```

+ `E_bubble`的修改：
  ```
  bool E_bubble =
      # Mispredicted branch
      # (E_icode == IJXX && !e_Cnd) ||
      # 7. 修改
      # backward taken error or forward not-taken error
      (
      (E_icode == IJXX && E_ifun != UNCOND && E_valC < E_valA && !e_Cnd) ||
      (E_icode == IJXX && E_ifun != UNCOND && E_valC >= E_valA && e_Cnd)
      ) ||
      # BBTFNT: This condition will change
      # Conditions for a load/use hazard
      E_icode in { IMRMOVQ, IPOPQ } &&
       E_dstM in { d_srcA, d_srcB};
  ```
  
  修改后的文件在[这里](https://github.com/upupming/CSAPP/blob/master/archlab/sim/pipe/pipe-btfnt.hcl)，实测《Archlab》中所描述的测试通过。
  
## 4.58
有以下几个关键点：
1. popq两次取指  
2. 第一次取popq做iaddq $8, %rsp，第二次取popq2做mrmovq -8(%rsp), rA  
3. load/use发生在mrmovq时

|阶段|popq rA|popq2 rA|
|-|-|-|
|实际执行|iaddq $8, %rsp|mrmovq -8(%rsp), rA|
|F|valP = PC|valP = PC + 2|
|D|valB=R[%rsp]|valB=R[%rsp]|
|E|valE=valB+8|valE=valB-8|
|M||valM=M8[valE]|
|W|R[rsp]=valE|R[rA]=valM|


`pipe-1w.hcl`修改如下(修改好后执行diff所得)：
```
--- origin-pipe-1w.hcl	2017-12-02 00:49:15.000000000 -0800
+++ pipe-1w.hcl	2017-12-02 00:49:15.000000000 -0800
@@ -157,6 +157,7 @@
 ## so that it will be IPOP2 when fetched for second time.
 word f_icode = [
 	imem_error : INOP;
+	D_icode == IPOPQ : IPOP2;
 	1: imem_icode;
 ];
 
@@ -169,7 +170,7 @@
 # Is instruction valid?
 bool instr_valid = f_icode in 
 	{ INOP, IHALT, IRRMOVQ, IIRMOVQ, IRMMOVQ, IMRMOVQ,
-	  IOPQ, IJXX, ICALL, IRET, IPUSHQ, IPOPQ };
+	  IOPQ, IJXX, ICALL, IRET, IPUSHQ, IPOPQ, IPOP2 };
 
 # Determine status code for fetched instruction
 word f_stat = [
@@ -182,7 +183,7 @@
 # Does fetched instruction require a regid byte?
 bool need_regids =
 	f_icode in { IRRMOVQ, IOPQ, IPUSHQ, IPOPQ, 
-		     IIRMOVQ, IRMMOVQ, IMRMOVQ };
+		     IIRMOVQ, IRMMOVQ, IMRMOVQ, IPOP2 };
 
 # Does fetched instruction require a constant word?
 bool need_valC =
@@ -192,6 +193,7 @@
 word f_predPC = [
 	f_icode in { IJXX, ICALL } : f_valC;
 	## 1W: Want to refetch popq one time
+	f_icode == IPOPQ : f_pc;
 	1 : f_valP;
 ];
 
@@ -204,14 +206,14 @@
 ## What register should be used as the A source?
 word d_srcA = [
 	D_icode in { IRRMOVQ, IRMMOVQ, IOPQ, IPUSHQ  } : D_rA;
-	D_icode in { IPOPQ, IRET } : RRSP;
+	D_icode in { IRET } : RRSP;
 	1 : RNONE; # Don't need register
 ];
 
 ## What register should be used as the B source?
 word d_srcB = [
 	D_icode in { IOPQ, IRMMOVQ, IMRMOVQ  } : D_rB;
-	D_icode in { IPUSHQ, IPOPQ, ICALL, IRET } : RRSP;
+	D_icode in { IPUSHQ, IPOPQ, IPOP2, ICALL, IRET } : RRSP;
 	1 : RNONE;  # Don't need register
 ];
 
@@ -224,7 +226,7 @@
 
 ## What register should be used as the M destination?
 word d_dstM = [
-	D_icode in { IMRMOVQ, IPOPQ } : D_rA;
+	D_icode in { IMRMOVQ, IPOP2 } : D_rA;
 	1 : RNONE;  # Don't write any register
 ];
 
@@ -255,7 +257,7 @@
 word aluA = [
 	E_icode in { IRRMOVQ, IOPQ } : E_valA;
 	E_icode in { IIRMOVQ, IRMMOVQ, IMRMOVQ } : E_valC;
-	E_icode in { ICALL, IPUSHQ } : -8;
+	E_icode in { ICALL, IPUSHQ, IPOP2 } : -8;
 	E_icode in { IRET, IPOPQ } : 8;
 	# Other instructions don't need ALU
 ];
@@ -263,7 +265,7 @@
 ## Select input B to ALU
 word aluB = [
 	E_icode in { IRMMOVQ, IMRMOVQ, IOPQ, ICALL, 
-		     IPUSHQ, IRET, IPOPQ } : E_valB;
+		     IPUSHQ, IRET, IPOPQ, IPOP2 } : E_valB;
 	E_icode in { IRRMOVQ, IIRMOVQ } : 0;
 	# Other instructions don't need ALU
 ];
@@ -292,13 +294,13 @@
 
 ## Select memory address
 word mem_addr = [
-	M_icode in { IRMMOVQ, IPUSHQ, ICALL, IMRMOVQ } : M_valE;
-	M_icode in { IPOPQ, IRET } : M_valA;
+	M_icode in { IRMMOVQ, IPUSHQ, ICALL, IMRMOVQ, IPOP2 } : M_valE;
+	M_icode in { IRET } : M_valA;
 	# Other instructions don't need address
 ];
 
 ## Set read control signal
-bool mem_read = M_icode in { IMRMOVQ, IPOPQ, IRET };
+bool mem_read = M_icode in { IMRMOVQ, IRET, IPOP2 };
 
 ## Set write control signal
 bool mem_write = M_icode in { IRMMOVQ, IPUSHQ, ICALL };
@@ -350,7 +352,7 @@
 bool F_bubble = 0;
 bool F_stall =
 	# Conditions for a load/use hazard
-	E_icode in { IMRMOVQ, IPOPQ } &&
+	E_icode in { IMRMOVQ, IPOP2 } &&
 	 E_dstM in { d_srcA, d_srcB } ||
 	# Stalling at fetch while ret passes through pipeline
 	IRET in { D_icode, E_icode, M_icode };
@@ -359,7 +361,7 @@
 # At most one of these can be true.
 bool D_stall = 
 	# Conditions for a load/use hazard
-	E_icode in { IMRMOVQ, IPOPQ } &&
+	E_icode in { IMRMOVQ, IPOP2 } &&
 	 E_dstM in { d_srcA, d_srcB };
 
 bool D_bubble =
@@ -367,7 +369,7 @@
 	(E_icode == IJXX && !e_Cnd) ||
 	# Stalling at fetch while ret passes through pipeline
 	# but not condition for a load/use hazard
-	!(E_icode in { IMRMOVQ, IPOPQ } && E_dstM in { d_srcA, d_srcB }) &&
+	!(E_icode in { IMRMOVQ, IPOP2 } && E_dstM in { d_srcA, d_srcB }) &&
 	# 1W: This condition will change
 	  IRET in { D_icode, E_icode, M_icode };
 
@@ -378,7 +380,7 @@
 	# Mispredicted branch
 	(E_icode == IJXX && !e_Cnd) ||
 	# Conditions for a load/use hazard
-	E_icode in { IMRMOVQ, IPOPQ } &&
+	E_icode in { IMRMOVQ, IPOP2 } &&
 	 E_dstM in { d_srcA, d_srcB};
 
 # Should I stall or inject a bubble into Pipeline Register M?

```






