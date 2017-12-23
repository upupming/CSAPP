#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<stdint.h>
#include<iostream>
#include<iomanip>
#include<vector>

using namespace std;

#define NUM 20

struct st{
	char name[20];
	unsigned age;
	unsigned id;
};

// enum枚举、typedef
typedef	enum{Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday} day_t;

class hit_st{
public:
    hit_st():age(18),id(20171212),room(601){strcpy(name,"hit");};
	~hit_st(){printf("see you again,bye....\n");}
    void sayhello(){printf("\n%s says hello to you\n",name);}
private:
	char name[20];
	unsigned age;
	unsigned id;
	unsigned room;
};

void printst(struct st &me)
{
	printf("\nid=%d  name=%s  age=%d", me.id,me.name,me.age);
}

int sum(int a, int b);
int S = 2;
struct st  ics_me;

void branch(int a, int b){
   //  if语句
    if(a!=0){
        printf("a is nonzero.\n");
    }

    // if-else语句
    if(b==0){
        printf("b is zero.\n");
    }
    else{
        printf("b is nonzero.\n");
    }

    day_t day = Wednesday;
    // switch语句
    switch(day){
        case 0:
            printf("Monday\n");
            break;
        case 1:
            printf("Tuesday\n");
            break;
        case 2:
            printf("Wendesday\n");
            break;
        case 3:
            printf("Thursday\n");
            break;
        case 4:
            printf("Friday\n");
            break;
        case 5:
            printf("Saturday\n");
            break;
        case 6:
            printf("Sunday\n");
            break;
        default:
            printf("There's an error!\n");
            break;
    }
}

void loop(){
    // while语句
    int n = 5, result = 1;
    while(n > 1){
         result = result * n;
         printf("%d * ", n);
         n--;
    }
    printf("1 = %d\n", result);

    // do-while语句
    n =2; result = 1;
    printf("1");
    do{
        result *= n;
        printf(" * %d", n);
        n++;
    }while(n<=5);
    printf(" = %d\n", result);

    // for语句
    result = 1;
    for(n=1; n<5; n++){
        result *= n;
        printf("%d * ", n);
    }
    printf("%d = %d\n", n, result*n);
}

void my_swap(int *a, int *b){
    int tmp = *b;
    *b = *a;
    *a = tmp;
}
void my_swap(int &a, int &b){
    int tmp = b;
    b = a;
    a = tmp;
}

void dataTypes(){
    // 1.2.1 常用变量
    bool v_bool = true;

    char v_char = 'A'; unsigned char v_uchar = 1;

    short v_short = -65; unsigned short v_ushort = 65;
    int v_int = -12345678; unsigned int v_uint = 12345678;
    long v_long = -1234567890; unsigned long v_ulong = 1234567890;
    long long v_long_long = -43434213434341324; unsigned long long v_ulong_long = 12345678765653232;
    int32_t v_int32 = 243424324; uint32_t v_uint32 = 32423432;
    int64_t v_int64 = -243232424324; uint64_t v_uint64 = 32322423432;

    float v_float = 3.141592;
    double v_double = 3.14159265358979;

    cout << endl << v_bool << endl << endl;
    cout << v_char << " " << v_uchar << endl << endl

         << v_short << " " << v_ushort << " " << v_int << " " << v_uint << " " << v_long<< " " << v_ulong << " " << v_long_long << " " << v_ulong_long << " " << v_int32 << " " << v_uint32 << " " << v_int64 << " " << v_uint64 << endl << endl

         << setprecision(6) << v_float << " " << setprecision(15) << v_double << " " << endl;

    // 1.2.2 寄存器变量
    register int  r_int;
    register char r_char;
    register int* r_p;

    // 1.2.3 数组
    int a[5] = {1,2, 3, 4, 5};
    int b[][4] = {1, 2, 3, 4,
                  2, 3, 4, 5,
                  3, 4, 5, 6,
                  4 };
    vector<int> v_a(5);

    // 1.2.4 枚举
    day_t day = Monday;

    // 1.2.5 共用体
    typedef union{
        bool single;
        char spouse[20];
    }man_t;

    // 1.2.6 指针、引用
    printf("交换之前： b[2][3] = %d, b[3][2] = %d\n", b[2][3], b[3][2]);
    my_swap(&b[2][3], &b[3][2]);
    printf("指针交换函数之后： b[2][3] = %d, b[3][2] = %d\n", b[2][3], b[3][2]);
    my_swap(b[2][3], b[3][2]);
    printf("引用交换函数之后： b[2][3] = %d, b[3][2] = %d\n", b[2][3], b[3][2]);
}
int main(){
	char string[NUM];
	char ca = '1';
	char strin[20] = { '1' };
	bool isBoy = true;
	int intg = S,a=-1,b=0;
	float f = 1.1;
	double d = 1.2;

	hit_st hitSt;
    // 分支
    branch(a, b);
    // 循环
    loop();
    // 数据类型
    dataTypes();

	S=sum(a, b);
	strcpy(ics_me.name,"李一鸣");
	ics_me.id = 1160300625;
	ics_me.age = 18;

	printst(ics_me);

	hitSt.sayhello();
}

int sum(int a, int b){
	int c;
	c = a + b;
	return c;
}
