#include <stdio.h>
//
//comviva test question 
// constraints:
// if in an arry of 1 and 0 if the a[i]==a[i-1] then the result array is 1 else 0 , considering the frist element's previous bit is 0
//

void manchester (int len, int* arr){
	int res[10];
	res[0]=0;
	for (int i = 1;i<len; i++){
		if((arr[i]==arr[i-1])){
		res[i]=0;
		}
		else res[i]=1;
	}
	for(int i =0;i<len; i++){
		printf("%d",res[i]);
	}
}

int main(){
int arr[] ={0,1,0,0,1,1,1,0};
		manchester(8,arr);
		return 0;
}
