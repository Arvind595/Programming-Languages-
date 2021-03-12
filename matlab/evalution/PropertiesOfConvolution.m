%Matlab Program to verify the properties of linear convolution 

clc
clear all
close all

a=input('Enter the first sequence')
b=input('Enter the second sequence')
c=input('Enter the third sequence')

%To check commutative property
disp('Verification of Commutative Property')
y1=conv(a,b)
y2=conv(b,a)
%y1 and y2 must be same

%To check associative property
disp('Verification of Associative Property')
y3=conv(a,b);
y4=conv(y3,c)

y5=conv(b,c);
y6=conv(a,y5)
%y4 and y6 must be same

%To check distributive property
disp('Verification of Distributive Property')
y7=conv(a,b+c) %a,b,c must be of same length
y8=conv(a,b)+conv(a,c)
%y7 and y8 must be same
