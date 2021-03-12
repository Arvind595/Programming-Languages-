%% FIR Filter Type 3 Differentiator
% N=odd , antisymmeteric
clc; clear all; close all;
N=61; % N is odd
n=0:N-1;
alpha=(N-1)/2;
%impulse response of the filter
h=cos(pi*(n-alpha))./(n-alpha);
h(alpha+1)=0;

%% Rectangular window 
rect=ones(1,N);

%% Truncating the sequence using window function
hrect=h.*rect;

%% All plots
%impulse response 
figure(1);stem(hrect);
grid on;xlabel('---> n');ylabel('hrect(n)');
title('Impulse Response using Rectangular Window');

%% Frequency response
figure(2);freqz(hrect);
title('Frequency Response using Rectangular Window');

%% Z-plane plot
figure(4); zplane(hrect,1)
title('Pole-zero plot using rectangular window');

%% Windows visualization tool
wvtool(hrect);
