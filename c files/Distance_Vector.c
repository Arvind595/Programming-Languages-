/*Aim:Write a program for distance vector algorithm to  		
find suitable path for transmission*/

#include <stdio.h>

int main()
{ 
    int next_hop[20][20];
    int cost[20][20], n;
    int i,j,k;

    printf( "Enter no of nodes.\n" );
    scanf("%d",&n);
    printf( "Enter the distance(cost or weight)matrix:\n");
    printf("(Enter zero for same node connection and 100 for no direct connection)\n");
   
    for (i=1; i<=n; i++)
      printf("\t%d",i); // print column nos.
      
    for (i=1; i<=n; i++)
    {
	printf("\n%d\t",i); // print row nos.
	for (j=1; j<=n; j++)
	{
	   scanf("%d",&cost[i][j]); // accept cost matrix from user
	  next_hop[i][j]=j; // initialize the next hop matrix to j(dest)
	}
    }   
	// print Initial Next hop matrix
	printf(" Initial Next hop matrix: \n");
	for (i=1; i<=n; i++)
     	 printf("\t%d",i);// coulmn nos.
	for(i=1;i<=n;i++)
	{
	printf("\n%d\t",i);// i=row nos. 
	for (j=1; j<=n; j++)// j=column no,
	{
	   printf("%d\t",next_hop[i][j]);
	}
    printf("\n\n");
    }                    
    
    // start the Algorithm 
	for ( k = 1; k <= n; k++) // k= via path
	{
	for ( i = 1; i <=n; i++) // i= source
		{
		for ( j = 1; j <=n; j++) // j = dest
		{
		    
		    if(cost[i][j]>cost[i][k]+cost[k][j])
		    {
		    cost[i][j]= (cost[i][k]+cost[k][j] ); // update cost matrix
		    next_hop[i][j]=k; // update next hop matrix
		    }
		}
	    }
	}
    //print final cost matrix
	printf("Final cost matrix: \n");
	for ( i = 1; i <=n; i++)
      printf("\t%d",i); // coulmn nos.
	for(i=1;i<=n;i++)
	{
	printf("\n%d\t",i);// row nos.
	for ( j = 1; j <= n; j++)
	{
	   printf("%d\t",cost[i][j]);
	    
	}
    printf("\n");
    }
 //print final next hop matrix
	printf("Final Next hop matrix: \n");
	for ( i = 1; i <=n; i++)
     	 printf("\t%d",i);// column nos. 
	for(i=1;i<=n;i++)
	{
	printf("\n%d\t",i);// row nos. 
	for ( j = 1; j <= n; j++)
	{
	   printf("%d\t",next_hop[i][j]);
	    
	}
    printf("\n");
    }
    
    // cost[i][j]  *********** next_hop[i][j]
    
 //********** Display Routing Table***********
    for (i = 1; i<=n; i++)
	 {
	printf( "Routing table info for router:%d \n", i );// i= source
	 printf("Dest\tNext Hop\tCost\n" );
	for ( j = 1; j <= n; j++)// j= dest
	      printf("%d\t%d\t\t%d\n", j,next_hop[i][j], cost[i][j]);  
		   printf("\n\n");   
    } 
 
}// end main
