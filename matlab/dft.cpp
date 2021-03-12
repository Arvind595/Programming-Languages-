//C Program To find N point DFT of a given sequence
#define CHIP_6713 1
#include "dsk6713.h"
#include "dsk6713_aic23.h"
#include "stdio.h"
#include "stdlib.h"
#include "math.h"
#define pi 3.141592653589793
float *x, *XReal, *XImag, *XMag, *XPhase;
void main()
{
	int i, n , k, N, lx;

	//Reading length of input sequence
	printf("\nEnter the length of input sequence\n");
	scanf("%d",&lx);

	//Read the value of N
	printf("\nEnter the N point DFT desired\n");
	scanf("%d",&N);
	x=(float*)malloc(N*sizeof(float));

	//Dynamic memory allocation
	XReal=(float*)malloc(N*sizeof(float));
	XImag=(float*)malloc(N*sizeof(float));
	XMag=(float*)malloc(N*sizeof(float));
	XPhase=(float*)malloc(N*sizeof(float));

	//Reading input sequence
	printf("\nEnter the input sequence \n");
	for(i=0;i<lx;i++)
		scanf("\n%f\n",&x[i]);

	//padding of zeros to input sequence
	for(i=lx;i<N;i++)
		x[i]=0;

	//printing input sequence after padding zeros
	for(i=0;i<N;i++)
			printf("\n%f\n",x[i]);

	//Computing DFT
	for(k=0;k<N;k++)
	{
		XReal[k]=0;
		XImag[k]=0;
		for(n=0;n<N;n++)
		{
			XReal[k]+=x[n]*cos(2*pi/N*k*n);		//real part
			XImag[k]-=x[n]*sin(2*pi/N*k*n);		//imaginary part
		}
	}

	//Printing output
	printf("\nThe DFT computed is\n");
	for(k=0;k<n;k++)
		printf("(%f)+1j*(%f)\n",XReal[k],XImag[k]);
	for(k=0;k<n;k++)
	{
		XMag[k]=sqrt(pow(XReal[k],2)+pow(XImag[k],2));	//magnitude
		XPhase[k]=atan2(XImag[k],XReal[k]);					//phase
	}

	//Printing phase and Magnitude values
	printf("The magnitude and phase response of DFT are\n");
	for(k=0;k<N;k++)
		printf("XMag[%d]=%f\tXPhase[%d]=%f\n",k,XMag[k],k,XPhase[k]);
}	//end of main

