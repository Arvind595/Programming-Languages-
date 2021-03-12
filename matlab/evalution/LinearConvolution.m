%Matlab Program to find the linear convolution of two sequences

clc
clear all
close all

x=input('Enter the first sequence')
h=input('Enter the second sequence')

lx=length(x)
lh=length(h)
ly=lx+lh-1

x1=[x,zeros(1,lh-1)]
matrix=[x1']

for i=1:lh-1
    x1=[0,x1(1:ly-1)]
    matrix=[matrix,x1']
end

y1=matrix*h' %computing linear convolution

y2=conv(x,h) %computing linear convolution using built in command




