clc;
clear all;
close all;

n=input('enter bit lenght: ');
bits= rand(1,n)>0.5 %random number generation between 0-1 and return 1 if >0.5 else 0
timeperiod=input('timeperiod: ');%samples
time=0:(timeperiod*length(bits)-1)%generate whole numbers time scale
repeat=ones(1,timeperiod)%generate n number of 1's
nrzp = bits.'*repeat %combine bits into matrix of time*time
nrzp=nrzp.' %transpose of itself
nrzp=nrzp(:)' %write the matrix in column wise in single line

%polar (0,1)
nrzu=nrzp;
figure(1)
plot(time,nrzu)
axis([0,10*timeperiod,-1.5,1.5]); %setting xy axix scale limits 

%unipolar
nrzp=(2.*nrzp)-ones(1,length(nrzp));
figure(2)
plot(time,nrzp)
axis([0,10*timeperiod,-1.5,1.5]);