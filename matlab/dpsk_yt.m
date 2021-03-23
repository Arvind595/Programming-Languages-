clc;
close all;
clear all;
N = 6; %equal to no.of bits in b
b = randi([0 1], 1, N);
d = 1;%initial bit
dc = [];
for i=1:length(b)
    dc = [dc d];%concate
    d = not(xor(d,b(i)));
end
dc = [dc d];%concate last bit/ merge

%% NRZ Polar line coding
for ii=1:length(dc)
    if dc(ii) == 1
        nn(ii)= 1;
    else
        nn(ii)=-1;
    end
end

%% pulse shaping
s = 100;
i=1;
t = 0:1/s:length(dc);
for j=1:length(t)
    if t(j)<=i
        m(j)=nn(i);
    else
        m(j)=nn(i);
        i=i+1;
    end
end

subplot(411);
plot(t,m,'k-');
xlabel("Time");
ylabel("AMplitude");
title("NRZ Polar SIgnal"); 

%% Carrier
c = cos(2*pi*2*t);
subplot(412);
plot(t,c,'k-');
xlabel("Time");
ylabel("Amplitude");
title("Carrier SIgnal");

%% BPSK
x = m.*c;
subplot(413);
plot(t,x,'k-');
xlabel("Time");
ylabel("Amplitude");
title("BPSK SIgnal");

%% COherent detection
y=x;
y1 = y.*c; %to remove carier
subplot(414);
plot(t,y1,'k-');

%% integrator 
int_op = [];
for ii=0:s:length(y1)-s  
    int_o = (1/s)*trapz(y1(ii+1:ii+s));
    int_op = [int_op int_o];
end

%%Hard decision
det = (round(int_op,1)>=0);

%% Differential deduction
for ii=1:length(det)-1
    if det(ii) == det(ii+1)
        op(ii) = 1;
    else
        op(ii) = 0;
    end
end

figure(2);
stem(op);
