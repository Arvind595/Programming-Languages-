%matlab Program to verify sampling theorem
clc
clear all
close all
t=0:0.0001:1/10;
x1=sin(2*pi*100*t)+sin(2*pi*200*t);
subplot(3,1,1)
plot(x1)
grid on
xlabel('time')
ylabel('x1(t)')
title('Original Analog Signal')
%undersampling
fs=50;
ts=1/fs;
t=0:ts:1/10;
x2=sin(2*pi*100*t)+sin(2*pi*200*t);
subplot(3,1,2)
plot(x2)
grid on
xlabel('time')
ylabel('x2(t)')
title('Signal reconstructed from the undersampled signal')
%oversampling
fs=2000;
ts=1/fs;
t=0:ts:1/10;
x3=sin(2*pi*100*t)+sin(2*pi*200*t);
subplot(3,1,3)
plot(x3)
grid on
xlabel('time')
ylabel('x3(t)')
title('Signal reconstructed from the overrsampled signal')
figure
subplot(3,1,1)
plot(abs(fftshift(fft(x1))))
grid on
xlabel('frequency')
ylabel('X1(f)')
title('Spectrum of the original analog signal')
subplot(3,1,2)
plot(abs(fftshift(fft(x2))))
grid on
xlabel('frequency')
ylabel('X2(f)')
title('Spectrum of the undersampled signal')
subplot(3,1,3)
plot(abs(fftshift(fft(x3))))
grid on
xlabel('frequency')
ylabel('X3(f)')
title('Spectrum of the over sampled signal')