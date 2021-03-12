#include <stdio.h>
#include <math.h>

void main(){
    int lx,lh,ly;
    int x[100],h[100],y[100];

    printf("enter the lenght of x\n");
    scanf("%i",&lx);

    printf("enter the values of x\n");
    for (int i = 0; i < lx; i++)
    {
        scanf("%i",&x[i]);
    }

    printf("enter the lenght of h\n");
    scanf("%i", &lh);

    printf("enter the values of h\n");
    for (int i = 0; i < lh; i++)
    {
        scanf("%i", &h[i]);
    }
    ly=lx+lh-1;
    for (int n = 0; n <ly; n++)
    {
        y[n]=0;
      for (int k = 0; k < lx; k++)
      {
          if (((n-k)>=0) && ((n-k)<lh))
          {
              y[n]=y[n]+(x[k]*h[n-k]);
          }
          
      }
      
    }
    
    for (int i = 0; i < ly; i++)
    {
        printf("\n\t%i\t",y[i]);
    }


    
}