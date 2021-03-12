%Computation of N Point IDFT a sequence
clc;
clear all;
close all;

x1=input('Enter the sequence X(n):    ');
N=input('Enter the length of IDFT:     ');
x=[x1,zeros(1,N-length(x1))]
k=0:N-1
n=k
powers=n.'*k;
disp('IDFT matrix for given is');
WNkn=(exp(j*2*pi/N)).^powers
disp('The N point IDFT of the given sequence is')
X=1/N*WNkn*x.'                      % x is sequence after zero padding
disp('The N point IDFT of the given sequence using inbuilt function is')
X1=ifft(x1,N)                    % for inbuilt use original sequence


figure
subplot(2,1,1);
stem(0:length(x1)-1,x1);
grid on;
xlabel('---->n');
ylabel('---->amplitude');
title('Input sequence x(n)')

subplot(2,1,2);
stem(0:length(X1)-1,X1);
grid on;
xlabel('---->n');
ylabel('---->amplitude');
title('IDFT sequence X(n)')


