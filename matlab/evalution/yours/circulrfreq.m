clc
close all
clear all
x=input('enter tHe sequence of x(n):')

L=input('enter tHe value of L:')

N=input('enter tHe value of N:')
n=0:N-1;
X=fft(x,N);

lx=length(x);
w=exp(2*pi*n*L/N);

x1=[x,zeros(1,(N-lx))];
lhs=fft(w.*x1,N)
rhs=circshift(X,L,2)
