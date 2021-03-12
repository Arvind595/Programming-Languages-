#include<stdio.h>
int main(void){

int num=360;
int one =num&0xff;
int two =num>>8;

int num2=0;
num2=two;
num2=(num2<<8)+one;

printf("%d",num2);

    return 0;
}