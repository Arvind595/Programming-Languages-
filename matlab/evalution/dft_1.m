clc;
clear all;
close all;
x=input('Enter the input sequence, x(n): ');
N=input('Enter the  value of N: '); 
k=[0:N-1];
n=[0:N-1];

lx=length(x);
%% Zero Padding to input if N>lx
x1=[x,zeros(1,N-lx)];

%% Generating the power matrix
p=n'*k;

%% Generating Twiddle Factor matrix
W=exp(-(j*2*pi)/N);
WN=W.^p;

%% DFT

disp('DFT of x:');
Xk=WN*x1.'

%% Inbuilt DFT calculator
Y=fft(x,N);
disp('Inbuilt DFT of x:');
Y

%% Plots of DFT
figure(1);
subplot(2,1,1);
stem(k,abs(Xk));
xlabel('n');
ylabel('|Xk|');
title('Absolute value of DFT');

subplot(2,1,2);
stem(k,angle(Xk));
xlabel('n');
ylabel('Angle of X');
title('Phase value of DFT');
