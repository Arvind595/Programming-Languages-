#include <stdio.h>
#include <math.h>

void main()
{
    float ic[] = {1, -1};
    float yn[10], yt[10], yf[10];
    float x[10];
    int n = 10;

    printf("the input seq is");
    for (int i = 0; i < n; i++)
    {
        x[i] = pow(0.5, i);
        printf("\n%f\n", x[i]);
    }
    yn[0] =  - 2 * ic[0] - 3 * ic[1];
    yn[1] =  - 2 * yn[0] - 3 * ic[0];

    for (int i = 2; i < n; i++)
    {
        yn[i] = - 2 * yn[i-1] - 3 * yn[i-2];
    }
    
    printf("\nthe natural response is\n");
    for (int i = 0; i < n; i++)
    {
        printf("\n%f\n",yn[i]);
    }

    yf[0] = x[0];
    yf[1] = x[1]-2*yf[0];

    for (int i = 2; i < n; i++)
    {
        yf[i] = x[i]-2 * yf[i - 1] - 3 * yf[i - 2];
    }

    printf("\nthe forced response is\n");
    for (int i = 0; i < n; i++)
    {
        printf("\n%f\n", yn[i]);
    }
    printf("\nthe total response is\n");
    for (int i = 0; i < n; i++)
    {
        yt[i]=yn[i]+yf[i];
    }
    for (int i = 0; i < n; i++)
    {
        printf("\n%f\n", yt[i]);
    }
}