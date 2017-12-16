/* bar5.c */
double x;


void f(){
    int *p = (int*)&x;
    *p = 15213;
    *(p+1) = 15212;
}


