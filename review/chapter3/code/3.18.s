# long test(long x, long y, long z)
# x in %rdi, y in %rsi, z in %rdx

test:
    leaq (%rdi, %rsi), %rax     # %rax = x + y
    addq %rdx, %rax             # %rax = x + y +z

    cmpq $-3, %rdi              # x >= -3 ?
    jge .L2                     # if yes, goto .L2
    cmpq %rdx, %rsi             # y >= z ?
    jge .L3                     # if yes, goto .L3
    movq %rdi, %rax             # %rax = x
    imulq %rsi, %rax            # %rax = x * y
    ret                         # if x < -3 && y < z, return x * y

  .L3:                          # when y >= z
    movq %rsi, %rax             # %rax = x
    imulq %rdx, %rax            # %rax = x * z
    ret                         # if y >= z, retuwn x * z
  
  .L2:                          # when x >= -3
    cmpq $2, %rdi               # x <= 2 ?
    jle .L4                     # if yes, goto .L4
    movq %rdi, %rax             # %rax = x
    imulq %rdx, %rax            # %rax = x * z
  .L4:
    rep; ret                    # if -3 <= x <=2, return x + y +z; else x > 2, return x * z

