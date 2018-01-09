## 第4章 测试

总分10分

### 4.1 测试方法

    make
    ./mdriver -V -t traces/

### 4.2 测试结果评价

优化前采用的隐式空闲链表，只有54分  
    Perf index = 44 (util) + 9 (thru) = 53/100

优化后采用的是分离的空闲链表，达到了98分  
    Perf index = 58 (util) + 40 (thru) = 98/100

空间利用率提高不少，这归功于对碎片的处理；吞吐量（每秒完成的操作数）显著增加，这是因为搜索效率明显提升。

### 4.3 自测试结果

    Team Name:Ateam
    Member 1 :李一鸣:upupming@gmail.com
    Using default tracefiles in traces/
    Measuring performance with gettimeofday().

    Testing mm malloc
    Reading tracefile: amptjp-bal.rep
    Checking mm_malloc for correctness, efficiency, and performance.
    Reading tracefile: cccp-bal.rep
    Checking mm_malloc for correctness, efficiency, and performance.
    Reading tracefile: cp-decl-bal.rep
    Checking mm_malloc for correctness, efficiency, and performance.
    Reading tracefile: expr-bal.rep
    Checking mm_malloc for correctness, efficiency, and performance.
    Reading tracefile: coalescing-bal.rep
    Checking mm_malloc for correctness, efficiency, and performance.
    Reading tracefile: random-bal.rep
    Checking mm_malloc for correctness, efficiency, and performance.
    Reading tracefile: random2-bal.rep
    Checking mm_malloc for correctness, efficiency, and performance.
    Reading tracefile: binary-bal.rep
    Checking mm_malloc for correctness, efficiency, and performance.
    Reading tracefile: binary2-bal.rep
    Checking mm_malloc for correctness, efficiency, and performance.
    Reading tracefile: realloc-bal.rep
    Checking mm_malloc for correctness, efficiency, and performance.
    Reading tracefile: realloc2-bal.rep
    Checking mm_malloc for correctness, efficiency, and performance.

    Results for mm malloc:
    trace  valid  util     ops      secs  Kops
     0       yes   99%    5694  0.000688  8274
     1       yes   99%    5848  0.000390 14991
     2       yes   99%    6648  0.000450 14780
     3       yes   99%    5380  0.000449 11985
     4       yes   99%   14400  0.000516 27934
     5       yes   95%    4800  0.000783  6132
     6       yes   94%    4800  0.000804  5970
     7       yes   95%   12000  0.009310  1289
     8       yes   88%   24000  0.007270  3301
     9       yes   99%   14401  0.000271 53101
    10       yes   98%   14401  0.000152 94557
    Total          97%  112372  0.021083  5330

    Perf index = 58 (util) + 40 (thru) = 98/100

