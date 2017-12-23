## 第3章 C、C++语言的汇编实现

其实第2章就汇编实现也进行了描述。

### 3.1 整型

可用寄存器直接存储或者在栈中分配相应大小的存储空间。  
内存间拷贝、参与运算需要用到寄存器。  
    
### 3.2 浮点型

浮点型寄存器`%xmm0`-`%xmm15`（16字节）、`%ymm0`-`%ymm15`（32字节），栈中存储。  
内存间拷贝、参与运算需要用到寄存器。  
    
### 3.3 类型转换
  
这部分主要涉及的是计算机存储数据的方式，这部分内容在课本第二章。  

+ 有符号整数与无符号整数
    
    最高位的权值对于有符号数为负，对于无符号数为负

+ 小整型与大整型
    
    由小到大高位执行符号拓展，确保负数值不变；由大到小舍去高位。
    
+ 整型浮点

    整型到浮点舍入到最近的最近的浮点数。  
    浮点到整型舍入需要应用“向偶数舍入”，比如3.500 000和4.500 000都舍入成4，这样可以避免统计误差，%50的情况向上摄入，%50的情况向下摄入。
    
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

+ 分支、循环结构的实现方法

    见[2.1.3](../chapter3/2.1.md)

+ 代码优化对循环的影响
    
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
    
       gcc -S -Og loop.c -o loop-Og.s
    
    ```assembly
    loop:
    .LFB0:
    .cfi_startproc
    movl    $0, %edx
    jmp .L2
    .L3:
    addl    %edx, %eax
    addl    $1, %edx
    .L2:
    cmpl    $4, %edx
    jle .L3
    rep ret
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

### 3.6 引用
    
    同样见[2.2.6](../chapter2/2.2.md)

### 3.7 类成员函数

    调用类成员函数`sayhello`，就像调用一个普通函数一样，只需把对象的数据指针传给这个函数即可。
    
    ```assembly
    4018a5:	lea    -0x40(%rbp),%rax
    4018a9:	mov    %rax,%rdi
    4018ac:	callq  4019c2 <_ZN6hit_st8sayhelloEv>
    ```
