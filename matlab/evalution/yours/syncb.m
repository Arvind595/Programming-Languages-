clc
close all
clear all
N=500;
t=linspace(-5,5,N);
x=sinc(t);
plot(x);
X=fft(x,N);
figure;
plot(fftshift(abs(X)));
