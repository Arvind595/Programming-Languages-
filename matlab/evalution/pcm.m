clc;
close all;
clear all;
n=input('Enter n:');
n1=input('Enter no. of samples:');
L=2^n;

%%signal generation
x=0:1/100:4*pi;
y=8*sin(x);
subplot(2,2,1);
plot(x,y);
grid on;
%sampling operation

x=0:2*pi/n1:4*pi;
s=8*sin(x);
subplot(3,1,1);
plot(s);
title('Analog sig');
ylabel('Amplitude');
xlabel('Time');
subplot(3,1,2);
stem(s);
grid on;
title('Sampled sig');

%quantization

vmax=8;
vmin=-vmax;
del=(vmax-vmin)/L;
part=vmin:del:vmax;
code=vmin-(del/2):del:vmax+(del/2);
[ind,q]=quantiz(s,part,code);

l1=length(ind);
l2=length(q);

for i=1:11
    if(ind(i)~=0)
        ind(i)=ind(i)-1;
    end
    i=i+1;
end

for i=1:12
    if(q(i)==vmin-(del/2))
        q(i)=vmin+(del/2);
    end
end
subplot(3,1,3);
stem(q);grid on;
title('Quantized sig');
ylabel('Amp');
xlabel('time');

%encoding
figure
code=de2bi(ind,'left-msb');
k=1;
for i=1:11
    for j=1:n
        coded(k)=code(i,j);
        j=j+1;
        k=k+1;
    end
    i=i+1;
end
subplot(2,1,1);grid on;
stairs(coded);
axis([0 100 -2 3]);
title('encoded sig');
ylabel('amp');
xlabel('time');


%decoding

qunt=reshape(coded,n,length(coded)/n);
index=bi2de(qunt,'left-msb');
q=del*index+vmin+(del/2);
subplot(2,1,2);grid on;
plot(q);
title('Demodulated sig');
ylabel('Amp');
xlabel('Time');

