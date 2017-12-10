# 前向选择的PIPE中f\_pc的解释

代码如下:  
```
## What address should instruction be fetched at

word f_pc = [

    # Mispredicted branch.  Fetch at incremented PC

    # 1. backward taken error

    M_icode == IJXX && M_ifun != UNCOND && M_valE < M_valA && !M_Cnd : M_valA;

    

    # 2. forward not-taken error

    M_icode == IJXX && M_ifun != UNCOND && M_valE >= M_valA && M_Cnd : M_valE;

    

    # Completion of RET instruction

    W_icode == IRET : W_valM;

    # Default: Use predicted value of PC

    1 : F_predPC;

];
```
PIPE结构可以参看课本302页图4-52  

f\_pc是下一个PC的值，它的得出__课本309页__有非常详细的讲解  
每次执行语句之前，预测逻辑会产生两个PC值，一个是M\_valA(即valP，不跳转情况下下一条指令的地址)、另一个是M\_valM(跳转情况下)

第一条语句:  
    
    M_icode == IJXX && M_ifun != UNCOND && M_valE < M_valA && !M_Cnd : M_valA;

M代表位于执行和访存阶段之间的流水线寄存器(293页有旁注)  
这条语句的意思是: 对于前向跳转，我们的PIPE会预测执行跳转，但是这时发现预测有错误，即不应该跳转，那么f\_pc应该设置为M\_valA，即不跳转  

第二条语句:  

    M_icode == IJXX && M_ifun != UNCOND && M_valE >= M_valA && M_Cnd : M_valE;

这条语句的意思是: 对于后向跳转，我们的PIPE会预测不去跳转，但是这时发现预测有错误，即应该跳转，那么f\_pc应该设置为M\_valM，即跳转

第三条语句:

    W_icode == IRET : W_valM;

这条语句的意思是: 对于ret指令，直接使用W\_valM即可  

第四条语句:  

   1 : F\_predPC;


这条语句的意思是: 在其他情况下，分支预测是正确的，直接使用原来预测好的值f\_predPC   
