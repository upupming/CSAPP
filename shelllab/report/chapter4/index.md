## 第4章 TinyShell测试

总分15分，每例1分

### 4.1 测试方法

针对tsh和参考shell程序tshref，完成测试项目4.1-4.15的对比测试，并将测试结果记录下来。

### 4.2 测试结果评价

tsh与tshref的输出在一下两个方面可以不同：
+ PID
+ 测试文件trace11.txt, trace12.txt和trace13.txt中的/bin/ps命令，每次运行的输出都会不同，但每个mysplit进程的运行状态应该相同。

除了上述两方面允许的差异，tsh与tshref的输出相同则判为正确，如不同则给出原因分析。

### 4.3 自测试结果

#### 4.3.1 测试用例trace01.txt

    make test01; make rtest01

<table style="width:100%" border="1">
  <tr>
    <th>tsh测试结果
    <th>tshref测试结果
  
  <tr>
    <td><pre>./sdriver.pl -t trace01.txt -s ./tshref -a "-p"
#
# trace01.txt - Properly terminate on EOF.
#
</pre>
	<td><pre>./sdriver.pl -t trace01.txt -s ./tshref -a "-p"
#
# trace01.txt - Properly terminate on EOF.
#
</pre>

  <tr><th colspan="2"><div align="center">测试结论：相同
</table>

#### 4.3.2 测试用例trace02.txt

    make test02; make rtest02

<table style="width:100%" border="1">
  <tr>
    <th>tsh测试结果
    <th>tshref测试结果
  
  <tr>
    <td><pre>./sdriver.pl -t trace02.txt -s ./tsh -a "-p"
#
# trace02.txt - Process builtin quit command.
#
</pre>
	<td><pre>./sdriver.pl -t trace02.txt -s ./tshref -a "-p"
#
# trace02.txt - Process builtin quit command.
#
</pre>

  <tr><th colspan="2"><div align="center">测试结论：相同
</table>

#### 4.3.3 测试用例trace03.txt

    make test03; make rtest03

<table style="width:100%" border="1">
  <tr>
    <th>tsh测试结果
    <th>tshref测试结果
  
  <tr>
    <td><pre>./sdriver.pl -t trace03.txt -s ./tsh -a "-p"
#
# trace03.txt - Run a foreground job.
#
tsh> quit
</pre>
	<td><pre>./sdriver.pl -t trace03.txt -s ./tshref -a "-p"
#
# trace03.txt - Run a foreground job.
#
tsh> quit
</pre>

  <tr><th colspan="2"><div align="center">测试结论：相同
</table>

#### 4.3.4 测试用例trace04.txt

    make test04; make rtest04

<table style="width:100%" border="1">
  <tr>
    <th>tsh测试结果
    <th>tshref测试结果
  
  <tr>
    <td><pre>./sdriver.pl -t trace04.txt -s ./tsh -a "-p"
#
# trace04.txt - Run a background job.
#
tsh> ./myspin 1 &
[1] (15825) ./myspin 1 &
</pre>
	<td><pre>./sdriver.pl -t trace04.txt -s ./tshref -a "-p"
#
# trace04.txt - Run a background job.
#
tsh> ./myspin 1 &
[1] (15831) ./myspin 1 &
</pre>

  <tr><th colspan="2"><div align="center">测试结论：只有PID不同，这是正常且必然的
</table>

#### 4.3.5 测试用例trace05.txt

    make test05; make rtest05

<table style="width:100%" border="1">
  <tr>
    <th>tsh测试结果
    <th>tshref测试结果
  
  <tr>
    <td><pre>./sdriver.pl -t trace05.txt -s ./tsh -a "-p"
#
# trace05.txt - Process jobs builtin command.
#
tsh> ./myspin 2 &
[1] (16003) ./myspin 2 &
tsh> ./myspin 3 &
[2] (16005) ./myspin 3 &
tsh> jobs
[1] (16003) Running ./myspin 2 &
[2] (16005) Running ./myspin 3 &
</pre>
	<td><pre>./sdriver.pl -t trace05.txt -s ./tshref -a "-p"
#
# trace05.txt - Process jobs builtin command.
#
tsh> ./myspin 2 &
[1] (16012) ./myspin 2 &
tsh> ./myspin 3 &
[2] (16015) ./myspin 3 &
tsh> jobs
[1] (16012) Running ./myspin 2 &
[2] (16015) Running ./myspin 3 &
</pre>

  <tr><th colspan="2"><div align="center">测试结论：只有PID不同，这是正常且必然的
</table>

#### 4.3.6 测试用例trace06.txt

    make test06; make rtest06

<table style="width:100%" border="1">
  <tr>
    <th>tsh测试结果
    <th>tshref测试结果
  
  <tr>
    <td><pre>./sdriver.pl -t trace06.txt -s ./tsh -a "-p"
#
# trace06.txt - Forward SIGINT to foreground job.
#
tsh> ./myspin 4
Job [1] (16069) terminated by signal 2
</pre>
	<td><pre>./sdriver.pl -t trace06.txt -s ./tshref -a "-p"
#
# trace06.txt - Forward SIGINT to foreground job.
#
tsh> ./myspin 4
Job [1] (16075) terminated by signal 2
</pre>

  <tr><th colspan="2"><div align="center">测试结论：只有PID不同，这是正常且必然的
</table>

#### 4.3.7 测试用例trace07.txt

    make test07; make rtest07

<table style="width:100%" border="1">
  <tr>
    <th>tsh测试结果
    <th>tshref测试结果
  
  <tr>
    <td><pre>./sdriver.pl -t trace07.txt -s ./tsh -a "-p"
#
# trace07.txt - Forward SIGINT only to foreground job.
#
tsh> ./myspin 4 &
[1] (16084) ./myspin 4 &
tsh> ./myspin 5
Job [2] (16086) terminated by signal 2
tsh> jobs
[1] (16084) Running ./myspin 4 &
</pre>
	<td><pre>./sdriver.pl -t trace07.txt -s ./tshref -a "-p"
#
# trace07.txt - Forward SIGINT only to foreground job.
#
tsh> ./myspin 4 &
[1] (16093) ./myspin 4 &
tsh> ./myspin 5
Job [2] (16095) terminated by signal 2
tsh> jobs
[1] (16093) Running ./myspin 4 &
</pre>

  <tr><th colspan="2"><div align="center">测试结论：只有PID不同，这是正常且必然的
</table>

#### 4.3.8 测试用例trace08.txt

    make test08; make rtest08

<table style="width:100%" border="1">
  <tr>
    <th>tsh测试结果
    <th>tshref测试结果
  
  <tr>
    <td><pre>./sdriver.pl -t trace08.txt -s ./tsh -a "-p"
#
# trace08.txt - Forward SIGTSTP only to foreground job.
#
tsh> ./myspin 4 &
[1] (16124) ./myspin 4 &
tsh> ./myspin 5
Job [2] (16126) stopped by signal 20
tsh> jobs
[1] (16124) Running ./myspin 4 &
[2] (16126) Stopped ./myspin 5 
</pre>
	<td><pre>./sdriver.pl -t trace08.txt -s ./tshref -a "-p"
#
# trace08.txt - Forward SIGTSTP only to foreground job.
#
tsh> ./myspin 4 &
[1] (16135) ./myspin 4 &
tsh> ./myspin 5
Job [2] (16137) stopped by signal 20
tsh> jobs
[1] (16135) Running ./myspin 4 &
[2] (16137) Stopped ./myspin 5 
</pre>

  <tr><th colspan="2"><div align="center">测试结论：只有PID不同，这是正常且必然的
</table>

#### 4.3.9 测试用例trace09.txt

    make test09; make rtest09

<table style="width:100%" border="1">
  <tr>
    <th>tsh测试结果
    <th>tshref测试结果
  
  <tr>
    <td><pre>./sdriver.pl -t trace09.txt -s ./tsh -a "-p"
#
# trace09.txt - Process bg builtin command
#
tsh> ./myspin 4 &
[1] (16162) ./myspin 4 &
tsh> ./myspin 5
Job [2] (16164) stopped by signal 20
tsh> jobs
[1] (16162) Running ./myspin 4 &
[2] (16164) Stopped ./myspin 5 
tsh> bg %2
[2] (16164) ./myspin 5 
tsh> jobs
[1] (16162) Running ./myspin 4 &
[2] (16164) Running ./myspin 5 
</pre>
	<td><pre>./sdriver.pl -t trace09.txt -s ./tshref -a "-p"
#
# trace09.txt - Process bg builtin command
#
tsh> ./myspin 4 &
[1] (16173) ./myspin 4 &
tsh> ./myspin 5
Job [2] (16175) stopped by signal 20
tsh> jobs
[1] (16173) Running ./myspin 4 &
[2] (16175) Stopped ./myspin 5 
tsh> bg %2
[2] (16175) ./myspin 5 
tsh> jobs
[1] (16173) Running ./myspin 4 &
[2] (16175) Running ./myspin 5 
</pre>

  <tr><th colspan="2"><div align="center">测试结论：只有PID不同，这是正常且必然的
</table>

#### 4.3.10 测试用例trace10.txt

    make test10; make rtest10

<table style="width:100%" border="1">
  <tr>
    <th>tsh测试结果
    <th>tshref测试结果
  
  <tr>
    <td><pre>./sdriver.pl -t trace10.txt -s ./tsh -a "-p"
#
# trace10.txt - Process fg builtin command. 
#
tsh> ./myspin 4 &
[1] (16211) ./myspin 4 &
tsh> fg %1
Job [1] (16211) stopped by signal 20
tsh> jobs
[1] (16211) Stopped ./myspin 4 &
tsh> fg %1
tsh> jobs
</pre>
	<td><pre>./sdriver.pl -t trace10.txt -s ./tshref -a "-p"
#
# trace10.txt - Process fg builtin command. 
#
tsh> ./myspin 4 &
[1] (16221) ./myspin 4 &
tsh> fg %1
Job [1] (16221) stopped by signal 20
tsh> jobs
[1] (16221) Stopped ./myspin 4 &
tsh> fg %1
tsh> jobs
</pre>

  <tr><th colspan="2"><div align="center">测试结论：只有PID不同，这是正常且必然的
</table>

#### 4.3.11 测试用例trace11.txt

    make test11; make rtest11

<table style="width:100%" border="1">
  <tr>
    <th>tsh测试结果
    <th>tshref测试结果
  
  <tr>
    <td><pre>./sdriver.pl -t trace11.txt -s ./tsh -a "-p"
#
# trace11.txt - Forward SIGINT to every process in foreground process group
#
tsh> ./mysplit 4
Job [1] (16242) terminated by signal 2
tsh> /bin/ps a
  PID TTY      STAT   TIME COMMAND
 1000 tty7     Ssl+   6:59 /usr/lib/xorg/Xorg -core :0 -seat seat0 -auth /var/run/lightdm/root/:0 -nolisten tcp vt7 -novtswitch
 3733 pts/18   Ss+    0:00 bash
 3793 pts/18   Sl     1:20 gedit chapter3/3.2.md
15534 pts/4    Ss     0:00 bash
16237 pts/4    S+     0:00 make test11
16238 pts/4    S+     0:00 /bin/sh -c ./sdriver.pl -t trace11.txt -s ./tsh -a "-p"
16239 pts/4    S+     0:00 /usr/bin/perl ./sdriver.pl -t trace11.txt -s ./tsh -a -p
16240 pts/4    R+     0:01 ./tsh -p
16245 pts/4    R      0:00 /bin/ps a
</pre>
	<td><pre>./sdriver.pl -t trace11.txt -s ./tshref -a "-p"
#
# trace11.txt - Forward SIGINT to every process in foreground process group
#
tsh> ./mysplit 4
Job [1] (16251) terminated by signal 2
tsh> /bin/ps a
  PID TTY      STAT   TIME COMMAND
 1000 tty7     Rsl+   6:59 /usr/lib/xorg/Xorg -core :0 -seat seat0 -auth /var/run/lightdm/root/:0 -nolisten tcp vt7 -novtswitch
 3733 pts/18   Ss+    0:00 bash
 3793 pts/18   Sl     1:20 gedit chapter3/3.2.md
15534 pts/4    Ss     0:00 bash
16246 pts/4    S+     0:00 make rtest11
16247 pts/4    S+     0:00 /bin/sh -c ./sdriver.pl -t trace11.txt -s ./tshref -a "-p"
16248 pts/4    S+     0:00 /usr/bin/perl ./sdriver.pl -t trace11.txt -s ./tshref -a -p
16249 pts/4    S+     0:00 ./tshref -p
16254 pts/4    R      0:00 /bin/ps a
</pre>

  <tr><th colspan="2"><div align="center">测试结论：PID不同，这是正常且必然的；`/bin/ps`的输出有一些差别，这也是正常的
</table>


#### 4.3.12 测试用例trace12.txt

    make test12; make rtest12

<table style="width:100%" border="1">
  <tr>
    <th>tsh测试结果
    <th>tshref测试结果
  
  <tr>
    <td><pre>./sdriver.pl -t trace12.txt -s ./tsh -a "-p"
#
# trace12.txt - Forward SIGTSTP to every process in foreground process group
#
tsh> ./mysplit 4
Job [1] (16381) stopped by signal 20
tsh> jobs
[1] (16381) Stopped ./mysplit 4 
tsh> /bin/ps a
  PID TTY      STAT   TIME COMMAND
 1000 tty7     Ssl+   7:05 /usr/lib/xorg/Xorg -core :0 -seat seat0 -auth /var/run/lightdm/root/:0 -nolisten tcp vt7 -novtswitch
 3733 pts/18   Ss+    0:00 bash
 3793 pts/18   Sl     1:23 gedit chapter3/3.2.md
15534 pts/4    Ss     0:00 bash
16376 pts/4    S+     0:00 make test12
16377 pts/4    S+     0:00 /bin/sh -c ./sdriver.pl -t trace12.txt -s ./tsh -a "-p"
16378 pts/4    S+     0:00 /usr/bin/perl ./sdriver.pl -t trace12.txt -s ./tsh -a -p
16379 pts/4    R+     0:01 ./tsh -p
16381 pts/4    T      0:00 ./mysplit 4
16382 pts/4    T      0:00 ./mysplit 4
16385 pts/4    R      0:00 /bin/ps a
</pre>
	<td><pre>./sdriver.pl -t trace12.txt -s ./tshref -a "-p"
#
# trace12.txt - Forward SIGTSTP to every process in foreground process group
#
tsh> ./mysplit 4
Job [1] (16391) stopped by signal 20
tsh> jobs
[1] (16391) Stopped ./mysplit 4 
tsh> /bin/ps a
  PID TTY      STAT   TIME COMMAND
 1000 tty7     Rsl+   7:05 /usr/lib/xorg/Xorg -core :0 -seat seat0 -auth /var/run/lightdm/root/:0 -nolisten tcp vt7 -novtswitch
 3733 pts/18   Ss+    0:00 bash
 3793 pts/18   Sl     1:23 gedit chapter3/3.2.md
15534 pts/4    Ss     0:00 bash
16386 pts/4    S+     0:00 make rtest12
16387 pts/4    S+     0:00 /bin/sh -c ./sdriver.pl -t trace12.txt -s ./tshref -a "-p"
16388 pts/4    S+     0:00 /usr/bin/perl ./sdriver.pl -t trace12.txt -s ./tshref -a -p
16389 pts/4    S+     0:00 ./tshref -p
16391 pts/4    T      0:00 ./mysplit 4
16392 pts/4    T      0:00 ./mysplit 4
16395 pts/4    R      0:00 /bin/ps a
</pre>

  <tr><th colspan="2"><div align="center">测试结论：PID不同，这是正常且必然的；`/bin/ps`的输出有一些差别，这也是正常的
</table>

#### 4.3.13 测试用例trace13.txt

    make test13; make rtest13

<table style="width:100%" border="1">
  <tr>
    <th>tsh测试结果
    <th>tshref测试结果
  
  <tr>
    <td><pre>./sdriver.pl -t trace13.txt -s ./tsh -a "-p"
#
# trace13.txt - Restart every stopped process in process group
#
tsh> ./mysplit 4
Job [1] (16448) stopped by signal 20
tsh> jobs
[1] (16448) Stopped ./mysplit 4 
tsh> /bin/ps a
  PID TTY      STAT   TIME COMMAND
 1000 tty7     Ssl+   7:08 /usr/lib/xorg/Xorg -core :0 -seat seat0 -auth /var/run/lightdm/root/:0 -nolisten tcp vt7 -novtswitch
 3733 pts/18   Ss+    0:00 bash
 3793 pts/18   Sl     1:26 gedit chapter3/3.2.md
15534 pts/4    Ss     0:00 bash
16443 pts/4    S+     0:00 make test13
16444 pts/4    S+     0:00 /bin/sh -c ./sdriver.pl -t trace13.txt -s ./tsh -a "-p"
16445 pts/4    S+     0:00 /usr/bin/perl ./sdriver.pl -t trace13.txt -s ./tsh -a -p
16446 pts/4    R+     0:02 ./tsh -p
16448 pts/4    T      0:00 ./mysplit 4
16449 pts/4    T      0:00 ./mysplit 4
16452 pts/4    R      0:00 /bin/ps a
tsh> fg %1
tsh> /bin/ps a
  PID TTY      STAT   TIME COMMAND
 1000 tty7     Ssl+   7:08 /usr/lib/xorg/Xorg -core :0 -seat seat0 -auth /var/run/lightdm/root/:0 -nolisten tcp vt7 -novtswitch
 3733 pts/18   Ss+    0:00 bash
 3793 pts/18   Sl     1:26 gedit chapter3/3.2.md
15534 pts/4    Ss     0:00 bash
16443 pts/4    S+     0:00 make test13
16444 pts/4    S+     0:00 /bin/sh -c ./sdriver.pl -t trace13.txt -s ./tsh -a "-p"
16445 pts/4    S+     0:00 /usr/bin/perl ./sdriver.pl -t trace13.txt -s ./tsh -a -p
16446 pts/4    R+     0:04 ./tsh -p
16455 pts/4    R      0:00 /bin/ps a
</pre>
	<td><pre>./sdriver.pl -t trace13.txt -s ./tshref -a "-p"
#
# trace13.txt - Restart every stopped process in process group
#
tsh> ./mysplit 4
Job [1] (16461) stopped by signal 20
tsh> jobs
[1] (16461) Stopped ./mysplit 4 
tsh> /bin/ps a
  PID TTY      STAT   TIME COMMAND
 1000 tty7     Ssl+   7:08 /usr/lib/xorg/Xorg -core :0 -seat seat0 -auth /var/run/lightdm/root/:0 -nolisten tcp vt7 -novtswitch
 3733 pts/18   Ss+    0:00 bash
 3793 pts/18   Sl     1:26 gedit chapter3/3.2.md
15534 pts/4    Ss     0:00 bash
16456 pts/4    S+     0:00 make rtest13
16457 pts/4    S+     0:00 /bin/sh -c ./sdriver.pl -t trace13.txt -s ./tshref -a "-p"
16458 pts/4    S+     0:00 /usr/bin/perl ./sdriver.pl -t trace13.txt -s ./tshref -a -p
16459 pts/4    S+     0:00 ./tshref -p
16461 pts/4    T      0:00 ./mysplit 4
16462 pts/4    T      0:00 ./mysplit 4
16465 pts/4    R      0:00 /bin/ps a
tsh> fg %1
tsh> /bin/ps a
  PID TTY      STAT   TIME COMMAND
 1000 tty7     Ssl+   7:08 /usr/lib/xorg/Xorg -core :0 -seat seat0 -auth /var/run/lightdm/root/:0 -nolisten tcp vt7 -novtswitch
 3733 pts/18   Ss+    0:00 bash
 3793 pts/18   Sl     1:26 gedit chapter3/3.2.md
15534 pts/4    Ss     0:00 bash
16456 pts/4    S+     0:00 make rtest13
16457 pts/4    S+     0:00 /bin/sh -c ./sdriver.pl -t trace13.txt -s ./tshref -a "-p"
16458 pts/4    S+     0:00 /usr/bin/perl ./sdriver.pl -t trace13.txt -s ./tshref -a -p
16459 pts/4    S+     0:00 ./tshref -p
16468 pts/4    R      0:00 /bin/ps a
</pre>

  <tr><th colspan="2"><div align="center">测试结论：PID不同，这是正常且必然的；`/bin/ps`的输出有一些差别，这也是正常的
</table>

#### 4.3.14 测试用例trace14.txt

    make test14; make rtest14

<table style="width:100%" border="1">
  <tr>
    <th>tsh测试结果
    <th>tshref测试结果
  
  <tr>
    <td><pre>./sdriver.pl -t trace14.txt -s ./tsh -a "-p"
#
# trace14.txt - Simple error handling
#
tsh> ./bogus
./bogus: Command not found
tsh> ./myspin 4 &
[1] (16515) ./myspin 4 &
tsh> fg
fg command requires PID or %jobid argument
tsh> bg
bg command requires PID or %jobid argument
tsh> fg a
fg: argument must be a PID or %jobid
tsh> bg a
bg: argument must be a PID or %jobid
tsh> fg 9999999
(9999999): No such process
tsh> bg 9999999
(9999999): No such process
tsh> fg %2
%2: No such job
tsh> fg %1
Job [1] (16515) stopped by signal 20
tsh> bg %2
%2: No such job
tsh> bg %1
[1] (16515) ./myspin 4 &
tsh> jobs
[1] (16515) Running ./myspin 4 &
</pre>
	<td><pre>./sdriver.pl -t trace14.txt -s ./tshref -a "-p"
#
# trace14.txt - Simple error handling
#
tsh> ./bogus
./bogus: Command not found
tsh> ./myspin 4 &
[1] (16535) ./myspin 4 &
tsh> fg
fg command requires PID or %jobid argument
tsh> bg
bg command requires PID or %jobid argument
tsh> fg a
fg: argument must be a PID or %jobid
tsh> bg a
bg: argument must be a PID or %jobid
tsh> fg 9999999
(9999999): No such process
tsh> bg 9999999
(9999999): No such process
tsh> fg %2
%2: No such job
tsh> fg %1
Job [1] (16535) stopped by signal 20
tsh> bg %2
%2: No such job
tsh> bg %1
[1] (16535) ./myspin 4 &
tsh> jobs
[1] (16535) Running ./myspin 4 &
</pre>

  <tr><th colspan="2"><div align="center">测试结论：PID不同，这是正常且必然的
</table>

#### 4.3.15 测试用例trace15.txt

    make test15; make rtest15

<table style="width:100%" border="1">
  <tr>
    <th>tsh测试结果
    <th>tshref测试结果
  
  <tr>
    <td><pre>./sdriver.pl -t trace15.txt -s ./tsh -a "-p"
#
# trace15.txt - Putting it all together
#
tsh> ./bogus
./bogus: Command not found
tsh> ./myspin 10
Job [1] (16707) terminated by signal 2
tsh> ./myspin 3 &
[1] (16709) ./myspin 3 &
tsh> ./myspin 4 &
[2] (16711) ./myspin 4 &
tsh> jobs
[1] (16709) Running ./myspin 3 &
[2] (16711) Running ./myspin 4 &
tsh> fg %1
Job [1] (16709) stopped by signal 20
tsh> jobs
[1] (16709) Stopped ./myspin 3 &
[2] (16711) Running ./myspin 4 &
tsh> bg %3
%3: No such job
tsh> bg %1
[1] (16709) ./myspin 3 &
tsh> jobs
[1] (16709) Running ./myspin 3 &
[2] (16711) Running ./myspin 4 &
tsh> fg %1
tsh> quit
</pre>
	<td><pre>./sdriver.pl -t trace15.txt -s ./tshref -a "-p"
#
# trace15.txt - Putting it all together
#
tsh> ./bogus
./bogus: Command not found
tsh> ./myspin 10
Job [1] (16727) terminated by signal 2
tsh> ./myspin 3 &
[1] (16729) ./myspin 3 &
tsh> ./myspin 4 &
[2] (16731) ./myspin 4 &
tsh> jobs
[1] (16729) Running ./myspin 3 &
[2] (16731) Running ./myspin 4 &
tsh> fg %1
Job [1] (16729) stopped by signal 20
tsh> jobs
[1] (16729) Stopped ./myspin 3 &
[2] (16731) Running ./myspin 4 &
tsh> bg %3
%3: No such job
tsh> bg %1
[1] (16729) ./myspin 3 &
tsh> jobs
[1] (16729) Running ./myspin 3 &
[2] (16731) Running ./myspin 4 &
tsh> fg %1
tsh> quit
</pre>

  <tr><th colspan="2"><div align="center">测试结论：PID不同，这是正常且必然的
</table>

### 4.4 自测试评分

根据节4.3的自测试结果，程序的测试评分为：15分。


