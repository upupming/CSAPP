# Cache Lab
    李一鸣                                                      1160300625

## Part A: Writing a Cache Simulator 缓存模拟器  

编写*csim.c*。

1. 定义缓存行结构体数据类型:  
    ```c
    typedef struct cache_line{
        int valid;
        mem_addr_t tag;
        unsigned long long int times;
    }cache_line_t;
    ```
    
    |valid|有效位|
    |mem_addr_t| 标记位|
    |times| 访问次数|

    `times`用来实现Least-Recently-Used替换策略。每次访问某一行时，将这一行的`times`设为比所有其他行都大的最大值。  
    在全局变量里有`times_counter`，记录着下一次将要赋给最新访问的行的`times`值。  

2. 缓存有S组、E行，因此定义一个缓存行二维数组`cache`:
    ```c
    typedef cache_line_t* cache_set_t;
    typedef cache_set_t* cache_t;

    /* The cache we are simulating */
    cache_t cache;
    ```
3. `initCache()`负责初始化`cache`

4. `replayTrace()`负责模拟缓存运行:  
   关键在于调用了`accessData()`，`accessData`负责处理缓存的hit、miss、eviction。

5. `freeCache`释放`chche`申请的内存。

## Part B: Optimizing Matrix Transpose 优化矩阵转置  

编写*trans.c*。

缓存大小C = S * E * B = 32 * 1 * 32 Bytes = 1 KB

1. M = 32  N = 32  
    将32*32的数组转换成16个8*8的块，数组能够完全缓存下来。只会出现冷不命中。  
    同时对角线元素访问时由于A、B的tag不同，会出现冲突不命中，用tmp暂存起来。 

2. M = 64  N = 64  
    定义了8个临时变量，同时为了防止冲突不命中，使用了行跳转。     

3. M = 61  N = 67  
    不能使用第一种方法，因为矩阵不是方的，可能会出现有些元素访问不到的错误、非法访问数据。   
    使用16*16的块，并进行越界检查。 
