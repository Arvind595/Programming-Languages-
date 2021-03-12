clc; clear all; close all;
x1=input('Enter the first sequence x1(n)=');
x2=input('Enter the second sequence x2(n)=');
lx1=length(x1);
lx2=length(x2);
N=max(lx1,lx2);
if(N==lx1)
    x2=[x2,zeros(1,N-lx2)];
else
    x1=[x1,zeros(1,N-lx1)];
end
x11=x1;
x22=x2;
x1=x1';
x2=x2';
A=x2;
for i=1:N-1
    w=[A(N,i);x2(1:N-1)];
    x2=w;
    A=[A,w];
end
y=A*x1
y=cconv(x1',x2',N)

