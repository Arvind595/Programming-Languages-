clc
close all;
clear all;
N=256;
subplot(2,1,1)

x=[0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0];
plot(x);
X=fft(x,N);
subplot(2,1,2);
plot((fftshift(abs(X))));
x1=ifft(X,N);
xp=sum(x.^2)
Xp=(1/N)*sum(abs(X).^2)