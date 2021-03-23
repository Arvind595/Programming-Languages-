close all;

b = randi([0 1], 1, N);
d = 1;
N = 6; %equal to no.of bits in b
dc = [];
for i=1:length(b)
    dc = [dc d];
    d = not(xor(d,b(i)));
end
dc = [dc d];

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
title("BASK SIgnal");

%% COherent detection
y=x;
y1 = y.*c;
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
