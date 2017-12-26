## 第4章 TinyShell测试

### 4.1 测试方法

针对tsh和参考shell程序tshref，完成测试项目4.1-4.15的对比测试，并将测试结果记录下来。

### 4.2 测试结果评价

tsh与tshref的输出在一下两个方面可以不同：
+ PID
+ 测试文件trace11.txt, trace12.txt和trace13.txt中的/bin/ps命令，每次运行的输出都会不同，但每个mysplit进程的运行状态应该相同。

除了上述两方面允许的差异，tsh与tshref的输出相同则判为正确，如不同则给出原因分析。

### 4.3 自测试结果

#### 4.3.1 测试用例trace01.txt

|tsh测试结果|tshref测试结果|
|
```bash
./sdriver.pl -t trace01.txt -s ./tsh -a "-p"
#
# trace01.txt - Properly terminate on EOF.
#
```
|
```bash
./sdriver.pl -t trace01.txt -s ./tshref -a "-p"
#
# trace01.txt - Properly terminate on EOF.
#
```
|




