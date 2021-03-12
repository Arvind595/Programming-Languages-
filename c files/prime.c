#include"stdio.h"

void main(){
    int n;
    int i;
    int flag;
    
    for( n=0;n<101;n++){
    for( i=2;i<=(n/2);i++){
        flag=0;
        if(n%i==0){
         flag=1;  
         break; 
        }}
       if(flag==0){
           if(n!=0 && n!=1){
               printf("%d \n ", n);
           }
       }
    }
}