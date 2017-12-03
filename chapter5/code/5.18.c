/* 5.18.c
 * 多项式求值6x3a循环展开
 */
double poly_6_3a(double a[], double x, long degree){
    long i;
    long limit = degree-5;// i<=degree-5, i+5<=degree
    double result0 = a[0];
    double result1 = 0;
    double result2 = 0;
    
    // x^1 x^3 x^5
    double xpwr0 = x;
    double xpwr1 = x * x * x;
    double xpwr2 = xpwr1 * x * x;

    // x^6
    double xpwr_step = xpwr1 * xpwr1;
    
    // 循环展开
    for(i = 1; i <= limit; i+=6){
        result0 = result0 + (a[i]*xpwr0 + a[i+1]*xpwr0*x);
        result1 = result1 + (a[i+2]*xpwr1 + a[i+3]*xpwr1*x);
        result2 = result2 + (a[i+4]*xpwr2 + a[i+5]*xpwr2*x);

        xpwr0 *= xpwr_step;
        xpwr1 *= xpwr_step;
        xpwr2 *= xpwr_step;
    }
    // 剩余部分
    for(; i <= degree; i++){
        result0 = result0 + a[i]*xpwr0;
        xpwr0 *= x;
    }

    return result0 + result1 + result2;
}
