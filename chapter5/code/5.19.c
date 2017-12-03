/*
 * 5.12.c 前置和计算6x6a循环展开
 */
void psum_6_6a(float a[], float p[], long n){
    long i;
    /* last_val holds p[i-1]; val holds p[i] */
    float last_val;
    float val0, val1, val2, val3, val4, val5;
    last_val = p[0] = a[0];

    // i < n-5, i+5 < n
    long limit = n-5;

    //循环展开
    for(i = 1; i < limit; i++){
        val0 = last_val + a[i];     p[i] = val0;
        val1 = val0 + a[i+1];       p[i+1] = val1;
        val2 = val1 + a[i+2];       p[i+2] = val1;
        val3 = val2 + a[i+3];       p[i+3] = val1;
        val4 = val3 + a[i+4];       p[i+4] = val1;
        val5 = val4 + a[i+5];       p[i+5] = val1;

        // 这里很有技巧，本来应该写成：
        // last_val = last_val + (a[i] + a[i+1] + a[i+2] + a[i+3] + ...);
        // 但是前置和比较特殊，可以不用重复加了
        last_val = val5;
    }
    // 剩余部分
    for(; i < n; i++){
        last_val += a[i];
        p[i] = last_val;
    }
}
