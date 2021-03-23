%% Pulse code modulation

%% Analog Signal
f = 2;
fs = 10*f; %sampling frq
t = 0:1/fs:1;
a = 2;
x = a*sin(2*pi*f*t);

%% Level Shifting
x1 = x+a;

%% Quantisation
q_op = round(x1);

%% Decimal to Binary
enco = dec2bin(q_op);

%% PCM Receiver
deco = bin2dec(enco);

%%SHifting to original aplitude level 
xr = deco-a;

%% plots
plot(t,x,'r',t,xr,'b');
xlabel("Time");
ylabel("Amplitude");
legend("Original", "Reconstruction");
