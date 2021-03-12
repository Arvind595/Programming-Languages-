#include <stdio.h>
#include <conio.h> 
int p[10][10];
void path(int i, int j){
	int k;
	k = p[i][j];
	if (k != 0){
		path(i, k);
		printf("%d ---> ", k);
		path(k, j);}
}
void main(){
	int i,j,k,n,t;
	int m[10][10];
	printf("\nEnter the no of nodes : ");
	scanf("%d",&n);
	

	printf("Enter node connection matrix");
	printf("\n To indicate no connection b/w two nodes enter w as 100 \n\n");
	for(i=1;i<=n;i++)printf("\t%d",i);

	for(i=1;i<=n;i++){
		printf("\n%d\t",i);
		for(j=1;j<=n;j++)
		{
			scanf("%d",&m[i][j]); // accept cost matrix from the user
			p[i][j]=0; // initialize path matrix to all zeroes
		}
	}
// ** i : source node | j : dest node | k : via node **
	for(i=1;i<=n;i++)
		m[i][i]=0; // diagonal elements are zero 
	
	for(k=1;k<=n;k++) // k: viA path
		for(i=1;i<=n;i++) // i =2
			for(j=1;j<=n;j++) // j=4
				if(m[i][k]+m[k][j]<m[i][j]) // logic
				{
					m[i][j]=m[i][k]+m[k][j];  // update cost matrix // alorithm logic
					p[i][j]=k; // update path matrix
				}
				//*********************cost 
	printf("\nFinal cost marix\n"); 
	for(i=1;i<=n;i++)
		printf("\t%d",i); // print column nos.

	for(i=1;i<=n;i++)// row no. 
	{
		printf("\n%d\t",i); // print row nos.
			for(j=1;j<=n;j++) 
			{
			printf("%d\t",m[i][j]);
		}}
		//*********************path
printf("\nFinal path marix\n"); 
	for(i=1;i<=n;i++)
		printf("\t%d",i); // print column nos.

for(i=1;i<=n;i++)// row no. 
	{
		printf("\n%d\t",i); // print row nos.
			for(j=1;j<=n;j++) 
			{
			printf("%d\t",p[i][j]);
		}}
		
	do
	{
		printf("\nEnter the source & destination nodes :");
		scanf("%d %d",&i,&j);
		printf("\nThe weight is = %d",m[i][j]);
		printf("\nThe path is :\n");
		printf("\n %d ---> ",i);
		path(i,j);
		printf("%d",j);
		printf("\nTo Repeat press r");
	}
	while (getch()=='r');
}// end main

// ******* path func def******


