%Matlab Program to find the cross correlation of the given two sequences

clc
clear all
close all
x=input('Input the first sequence')
h1=input('Input the second sequence')
h=fliplr(h1)
%from line 10 to line 17, program is same as linear convolution
N=length(x)+length(h)-1 %length of linear convolution
x1=[x,zeros(1,length(h)-1)]
matrix=x1'
for(i=1:length(h)-1)
    x1=[x1(N),x1(1:N-1)];
    matrix=[matrix,x1'];
end
y1=matrix*h.' %computation using matrix method for linear convolution
y2=xcorr(x,h1) %computation using inbuilt command
subplot(3,1,1)
stem(x)
grid on
xlabel('n')
ylabel('x[n]')
title('First Sequence')
subplot(3,1,2)
stem(h)
grid on
xlabel('n')
ylabel('h[n]')
title('Second Sequence')
subplot(3,1,3)
stem(y1)
grid on
xlabel('n')
ylabel('y[n]')
title('Result of Cross Correlation')
