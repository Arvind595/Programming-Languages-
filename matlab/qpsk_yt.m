%qpsk
clc;
close all;
clear all;

N=10;
x=randi([0 1],1,N);

%mapping to polar

for i=1:length(x)
    if x(i)==0 
        p(i)=-1;
    else
        p(i)=1;
    end
end

%even odd split
even_seq=p(1:2:length(x));
odd_seq=p(2:2:length(x));

%NRZ polarsig gen
%pulse shape both the seq
%odd
i=1;
t=0:0.01:length(x);
m=2:2:length(x);%even seq gen
for j=1:length(t)
    if t(j)<=m(i)
        odd_ps(j)=odd_seq(i);
    else
         odd_ps(j)=odd_seq(i);
        i=i+1;
    end
end
%even
i=1;
for j=1:length(t)
    if t(j)<=m(i)
        even_ps(j)=even_seq(i);
    else
        even_ps(j)=even_seq(i);
        i=i+1;
    end
end
figure(1);
subplot(211);
plot(t,odd_ps);
subplot(212);
plot(t,even_ps);

%carrier signals cos and sine
fac=2;
normalize=sqrt(2/fac);
c1=normalize*cos(2*pi*1*t); %same freq , diff phases
c2=normalize*sin(2*pi*1*t);


%wave generation
%two dpsk sig gen by and multiply even with cq and odd with c2
r1=even_ps.*c1; % this is a dpsk sig
r2=odd_ps.*c2; % this is also a dpsk sig
%sub both for qpsk
qpsk_sig=r1-r2;

figure(3);
subplot(311);
plot(t,r1);
subplot(312);
plot(t,r2);
subplot(313);
plot(t,qpsk_sig);


scatterplot([-0.707,-0.707;-0.707,0.707;0.707,-0.707;0.707,0.707])
