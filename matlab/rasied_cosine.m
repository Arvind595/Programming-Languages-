clc;
clear all;
close all;
 
%% Unipolar Raised Cosine
 
beta = 0.5; % try with different values of beta from 0 to 1 (roll-off factor)
T = 1;
t = linspace(0,(1+beta)/2/T,50);  %linearly spaced vectors (1x50) vectors
h = 1*(t<((1-beta)/2/T)) + (0.5*(1+cos(pi*T/beta*(t-(1-beta)/2/T)))) .* (t>=((1-beta)/2/T));
t = [-fliplr(t(2:end)),t];      %Flip matrix in left/right direction
h = [fliplr(h(2:end)),h];
 
bk = rand(1,100)>0.5;
x = bk'*h;
x = x';
x = x(:)';
t = 0:1/100:98+99/100;
subplot(211);plot(t,x); axis([0,10,-1,1]);
 
X = abs(fftshift(fft(x)));
X = X/max(X);
f = linspace(-50,50,length(X));
subplot(212);plot(f,X);axis([-5,5,0,1]);
 
%% Polar Raised Cosine
 
bk = 2*bk-1;
x = bk'*h;
x = x';
x = x(:)';
t = 0:1/100:98+99/100;
figure();
subplot(211);plot(t,x); axis([0,10,-1,1]);
 
X = abs(fftshift(fft(x)));
X = X/max(X);
f = linspace(-50,50,length(X));
subplot(212);plot(f,X);axis([-5,5,0,1]);
eyediagram(x,99)