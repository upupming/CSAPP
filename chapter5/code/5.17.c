/* 5.17.c
 * memset8x8循环展开
 */
void my_memset(void *s, unsigned long cs, size_t n){
    // 数据对其，开始部分以单字节写如
    size_t K = sizeof(unsigned long);
    size_t cnt = 0;
    unsigned char *schar = s;
    while(cnt < n){
        if((size_t)schar % K == 0){
           // 找到对齐起始点
           break;
        }
        *schar++ = (unsigned char)cs;
        cnt++;
    }

    // 每次复制8字节
    unsigned long *slong = (unsigned long *)schar;
    // size_t比较不可用减法
    for(; cnt + K < n; cnt += K){
        *slong = cs;
    }

    // 剩余部分，以单字节写入
    schar = (unsigned char)slong;
    for(; cnt < n; cnt++){
        *schar++ = (unsigned char)cs;
    }
    return s;
}
