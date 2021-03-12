clc
close all
clear all

x=input('enter the sequence of x(n):')

L=input('enter the value of L:')

N=input('enter the value of N:')
x1=[x,zeros(1,N-length(x))];
X=fft(x1,N)
k=0:N-1;
w=exp(-i*2*pi*k*L/N);
LHS1=circshift(x1,L,2)      
y1=w.*X;
RHS1=ifft(y1,N)            
 

y2=fft(circshift(x1,L,2),N);
LHS2=y2
RHS2=y1
