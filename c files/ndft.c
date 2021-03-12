#include<stdio.h>
#include<math.h>
#define pi 3.147
void main(){
    float x[100],xreal[1000],ximg[1000],xmag[1000],xphase[1000];
    int N,lx;

    printf("enter the value of N\n");
    scanf("%i",&N);

    printf("enter the length of x[n]\n");
    scanf("%i",&lx);

    printf("enter the values of x[n]\n");

    for(int i=0;i<lx;i++){
        scanf("%f",&x[i]);
    }
    
    //padding the sequence

     for(int i=lx;i<N;i++){
         x[i]=0;
     }
    printf("entered sequence is\n");

    for (int i = 0; i <N; i++)
    {
        printf("\n%f\n",x[i]);
    }
    
    for (int k = 0; k < N; k++)
    {
        ximg[k]=0;
        xreal[k]=0;

        for (int n = 0; n < N; n++)
        {
            xreal[k]+=x[n]*cos(2*pi/N*k*n);
            ximg[k]+=x[n]*sin(2*pi/N*k*n);        }
        
    }

    printf("the NDFT is\n");
    
    for (int i = 0; i < N; i++)
    {
        printf("\n %f + 1j* (%f) \n",xreal[i],ximg[i]);
    }
    
    printf("the magnitude is\n");

    for(int i=0;i<N;i++){
        xmag[i]=sqrt((pow(xreal[i],2)+pow(ximg[i],2)));
    }
    for (int i = 0; i < N; i++)
    {
        printf("\n%f\n", xreal[i]);
    }

    printf("the phase is\n");

    for (int i = 0; i < N; i++)
    {
        xphase[i] =atan2(xmag[i],xreal[i]);
    }
    for (int i = 0; i < N; i++)
    {
        printf("\n%f\n", xmag[i]);
    }
}   

