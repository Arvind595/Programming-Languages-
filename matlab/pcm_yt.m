%pcm
%sine wave
f=2;%2hz
fs=200*f; %sampling freq
t=0:1/fs:1; %time scale
a=8; %2v %directly prop to bit size

x=a*sin(2*pi*f*t);
figure(1);
plot(t,x,'-r')
stem(t,x)

%level shifting
x1=x+a;
figure(2);
plot(t,x1,'-r');
stem(t,x1);

%since the values are already seperated and plot command plots in continus
%no need of dampling
%quantization

q=round(x1);
figure(3);
plot(t,q);

%encoding

enco=de2bi(q,'left-msb');
figure(4);
grid on; 
stairs(enco);
axis([0 50 -1 2]);

%reciver

deco=bi2de(enco,'left-msb');
%shifting
xr=deco-a;

figure(5);
plot(t,x,'-r',t,xr,'k+-');
legend('original','reconstruted');

%butter filter
[num,den]=butter(6,2*f/fs);
recon=filter(num,den,xr);
figure(6);
plot(t,recon);