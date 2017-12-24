## 第3章 C、C++语言的汇编实现

其实第2章就对汇编实现进行了描述，这里再补充一下。

### 3.1 整型

代码见第2章

可用寄存器直接存储或者在栈中分配相应大小的存储空间。  
内存间拷贝、参与运算需要用到寄存器。  
    
### 3.2 浮点型

代码见第2章

浮点型寄存器`%xmm0`-`%xmm15`（16字节）、`%ymm0`-`%ymm15`（32字节）；栈中存储。  
内存间拷贝、参与运算需要用到寄存器。  
    
### 3.3 类型转换
  
这部分主要涉及的是计算机存储数据的方式，这部分内容在课本第2章。  

+ 有符号整数与无符号整数
    
    最高位的权值对于有符号数为负，对于无符号数为负。  
    强转时不会改变内部编码方式。
    
    ```c
    void int_uint(){
        int i_a = 8, i_b;
        unsigned int ui_a, ui_b = 7;

        ui_a = i_a;
        i_b = ui_b;
    }
    ```
	```assembly
    movl    $8, -16(%rbp)
    movl    $7, -12(%rbp)
    movl    -16(%rbp), %eax
    movl    %eax, -8(%rbp)
    movl    -12(%rbp), %eax
    movl    %eax, -4(%rbp)
    ```

+ 小整型与大整型
    
    由小到大高位执行符号拓展，确保负数值不变；由大到小舍去高位。  
    
    ```c
    void int_long(){
        int i_a = -1, i_b;
        long l_a, l_b = 6;

        l_a = i_a;
        i_b = l_b;
    }
    ```
    ```assembly
    movl    $-1, -24(%rbp)
    movq    $6, -16(%rbp)
    movl    -24(%rbp), %eax
    cltq        # 符号拓展
    movq    %rax, -8(%rbp)
    movq    -16(%rbp), %rax     # 到寄存器
    movl    %eax, -20(%rbp)     # 取低4字节
    ```

+ 整型浮点

    整型到浮点舍入到最近的最近的浮点数。  
    浮点到整型舍入需要应用“向偶数舍入”，比如3.500 000和4.500 000都舍入成4，这样可以避免统计误差，%50的情况向上舍入，%50的情况向下舍入。  
    分别使用x86-64指令`cvtsi2ss`、`cvtss2si`。
    ```c
    void int_float(){
        int i_a = 45, i_b;
        float f_a, f_b = 3.14;

        f_a = i_a;
        i_b = f_b;
    }
    ```
    ```assembly
    movl    $45, -16(%rbp)
    movss   .LC0(%rip), %xmm0
    movss   %xmm0, -12(%rbp)
    pxor    %xmm0, %xmm0
    cvtsi2ss    -16(%rbp), %xmm0 # 整型转浮点
    movss   %xmm0, -8(%rbp)
    movss   -12(%rbp), %xmm0
    cvttss2si   %xmm0, %eax      # 浮点转整形
    movl    %eax, -4(%rbp)
    ```

    
### 3.4 寻址

`lea`指令加载有效地址：
        
    lea 立即数 目的寄存器
     
将立即数处的内存地址给目的寄存器。`lea`指令除了产生指针外，通常替代`mov`指令进行加法运算。

```assembly
lea 6(%rax), %rdx
lea (%rax, %rax), %rdx
lea (%rax, %rcx, 4), %rdx
lea 7(%rax, %rcx, 8), %rdx
lea 0xA(, %rcx, 4), %rdx
lea 9(%rax, %rcx, 2), %rdx
```

### 3.5 函数

见[2.3 ](../chapter2/2.3.md)

```c
void callee(){
}

void caller(){
    callee();
}
```
```assembly
pushq   %rbp            # 保存帧
.cfi_def_cfa_offset 16
.cfi_offset 6, -16
movq    %rsp, %rbp      # 新建被调用函数的帧
.cfi_def_cfa_register 6
movl    $0, %eax
call    callee
```

### 3.6 分支、循环结构的实现方法

见[2.1.3](../chapter3/2.1.md)

### 3.7 代码优化对循环的影响
    
循环如下：
```c
int loop(){
    int i, sum;
    for(i=0; i<5; i++)
        sum += i;
    return sum;
}
```

不优化：

   gcc -S loop.c -o loop.s

```assembly
loop:
.LFB0:
    .cfi_startproc
    pushq   %rbp
    .cfi_def_cfa_offset 16
    .cfi_offset 6, -16
    movq    %rsp, %rbp
    .cfi_def_cfa_register 6
    movl    $0, -8(%rbp)
    jmp .L2
.L3:
    movl    -8(%rbp), %eax
    addl    %eax, -4(%rbp)
    addl    $1, -8(%rbp)
.L2:
    cmpl    $4, -8(%rbp)
    jle .L3
    movl    -4(%rbp), %eax
    popq    %rbp
    .cfi_def_cfa 7, 8
    ret
    .cfi_endproc
```
使用`jmp`、`jle`配合完成循环。
 
三级优化：
    
    gcc -S -O3 loop.c -o loop-O3.s

```assembly
loop:
.LFB0:
.cfi_startproc
movl    $10, %eax
ret
.cfi_endproc

```
编译器直接给出循环后的值，省去了循环。

### 3.8 引用
    
见[2.2.6](../chapter2/2.2.md)

汇编将引用转换为了指针。  

```c
void refe(int &a){
    a = 6;
}   

void caller(){
    int a;
    refe(a);
}   
```
```assembly
_Z6callerv:                 # caller函数
.LFB1:
    .cfi_startproc
    pushq   %rbp
    .cfi_def_cfa_offset 16
    .cfi_offset 6, -16
    movq    %rsp, %rbp
    .cfi_def_cfa_register 6
    subq    $16, %rsp
    movq    %fs:40, %rax
    movq    %rax, -8(%rbp)
    xorl    %eax, %eax
    leaq    -12(%rbp), %rax
    movq    %rax, %rdi      # 传指针给被调用者
    call    _Z4refeRi
    nop
    movq    -8(%rbp), %rax
    xorq    %fs:40, %rax
    je  .L3
    call    __stack_chk_fail
.L3:
    leave
    .cfi_def_cfa 7, 8
    ret
    .cfi_endproc
```


### 3.9 类成员函数

调用类成员函数`sayhello`，就像调用一个普通函数一样，只需把对象的数据指针传给这个函数即可。  
这样成员函数可以访问这个对象的数据，进行相应的操作。  
    
```assembly
4018a5:	lea    -0x40(%rbp),%rax
4018a9:	mov    %rax,%rdi
4018ac:	callq  4019c2 <_ZN6hit_st8sayhelloEv>
```
