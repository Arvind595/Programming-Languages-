clc
clear all
close all

x1=input('enter tx2e sequence of x(n):')
x2=input('enter tx2e sequence of x2(n):')
a=input('enter tx2e value of a:')
b=input('enter tx2e value of b:')
N=input('enter tx2e value of N:')
lx1=length(x1);
lx2=length(x2);
x11=[x1,zeros(1,(N-lx1))];
x22=[x2,zeros(1,(N-lx2))];
X1=fft(x1,N)
X2=fft(x2,N)

y1=a*x11+b*x22
lhs=fft(y1,N)
rhs=((a.*X1)+(b.*X2))

disp(lhs)
disp(rhs)