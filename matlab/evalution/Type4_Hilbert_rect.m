


%% FIR Filter Type 4 Hilbert Transform
% N=even , antisymmeteric
clc; clear all; close all;
N=60; % N is even
n=0:N-1;
alpha=(N-1)/2;
%impulse response of the filter
h=(1-cos(pi*(n-alpha)))./(pi*(n-alpha));

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
