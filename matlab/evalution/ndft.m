%Computation of N Point DFT a sequence
clc;
clear all;
close all;

x1=input('Enter the sequence x(n):    ');
N=input('Enter the length of DFT:     ');
x=[x1,zeros(1,N-length(x1))]
k=0:N-1
n=k
powers=n.'*k;
disp('DFT matrix for given is');
WNkn=(exp(-j*2*pi/N)).^powers
disp('The N point DFT of the given sequence is')
X=WNkn*x.'                      % x is sequence after zero padding
disp('The N point DFT of the given sequence using inbuilt function is')
X1=fft(x1,N)                    % for inbuilt use original sequence
disp('Magnitude spectrum:')
X_mag=abs(X)                    
disp('Phase spectrum:')
X_ang=angle(X)

figure
subplot(3,1,1);
stem(0:length(x1)-1,x1);
grid on;
xlabel('---->n');
ylabel('---->amplitude');
title('Input sequence x(n)')

subplot(3,1,2);
stem(0:length(X_mag)-1,X_mag); grid on;
xlabel('---->k');
ylabel('---->|X(k)|'); 
title('Magnitude spectrum')

subplot(3,1,3);
stem(0:length(X_ang)-1,X_ang); grid on;
xlabel('---->k');
ylabel('---->  <X(k)');
title('Phase spectrum')

