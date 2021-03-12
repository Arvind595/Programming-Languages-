%% FIR Filter Type 2 LPF
% N=even , symmeteric
clc; clear all; close all;
N=60; % N is even
n=0:N-1;
alpha=(N-1)/2;
wc=pi/8; %cut off frequency
%% Impulse response of the filter
h=sin(wc*(n-alpha))./(pi*(n-alpha));

%% Rectangular window 
rect=ones(1,N);
%% hanning window equation
hanning=0.5-0.5*cos(2*pi*n/(N-1));
%% Hamming window

%% Blackmann window

%% Truncating the sequence using window functions
hrect=h.*rect;
hhanning=h.*hanning;

%% All plots
%impulse response 
figure(1);subplot(2,1,1);stem(hrect);
grid on;xlabel('---> n');ylabel('hrect(n)');
title('Impulse Response using Rectangular Window');

subplot(2,1,2);stem(hhanning);
grid on;xlabel('---> n');ylabel('hhanning(n)')
title('Impulse Response using Hanning Window')

%% Frequency response
figure(2);freqz(hrect);
title('Frequency Response using Rectangular Window');

figure(3);freqz(hhanning);
title('Frequency Response using Hanning Window')

%% Z-plane plot
figure(4);subplot(2,1,1);zplane(hrect,1)
title('Pole-zero plot using rectangular window');

subplot(2,1,2);zplane(hhanning,1)
title('Pole-zero plot using hanning window')

%% Windows visualization tool
wvtool(hrect);
wvtool(hhanning);