#include<stdio.h>
#include<stdlib.h>
#include<string.h>


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

int main(){
	char string[NUM];
	char ca = '1';
	char strin[20] = { '1' };
	int intg = S,a=-1,b=0;
	float f = 1.1;
	double d = 1.2;

	hit_st hitSt;

    branch(a, b);
    loop();

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
