clc
clear all
close all
x=input('enter the frist sequence x(n)=')
h=input('enter the second sequence h(n)=')
h1=fliplr(h)


lx=length(x)
lh=length(h)
ly=lx+lh-1

%to generate c1

x1=[x';zeros(ly-lx,1)];
x2=x1;

%looping to genetate c

for i=1:lh-1
    x2=[0;x2(1:ly-1)]
    x1=[x1,x2]
end 

y=x1*h1';

disp('cross corelation output is=')
disp(y')
disp ('using inbuilt function=')
k=xcorr(x,h);
disp(k)

%plot

figure(1)
subplot(2,2,1);
stem(0:lx-1,x);
xlabel('n');
ylabel('x(n)');
title('input sequence x(n)');

subplot(2,2,2);
stem(0:lh-1,h);
xlabel('n');
ylabel('h(n)');
title('input sequence h(n)');


subplot(2,2,3:4);
stem(0:ly-1,y);
xlabel('n');
ylabel('y(n)');
title('corelation sequence y(n)');
