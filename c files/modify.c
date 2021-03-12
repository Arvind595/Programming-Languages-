#include<stdio.h>
void main ()
    {
    unsigned short num,b=1,p=2,mask,n=0;
        
    mask = 1 << p;
     num= (n & ~mask) | ((b << p) & mask);
    printf("\n",num);
}