close all;
clear all;
clc;
x=input('enter the value of first input sequence');
disp('1st i/p sequence is');
disp(x);
h=input('enter the values of 2nd dft sequence');
disp('2nd i/p sequence is');
disp(h);
lx=length(x);
lh=length(h);
N=max(lx,lh);
xx=[x zeros(N-lx)];
HH=[h zeros(N-lh)];
W=zeros(N,N);
for n=0:N-1
    for k=0:N-1
        W(n+1,k+1)=exp(-i*2*pi*n*k/N);
    end;
end;
X=W*xx.';
H=W*HH.';
disp('DFT of 1st sequence is');
disp(X.');
disp('DFT of 2nd sequence is');
disp(H.');
figure
subplot(2,1,1);
stem(x);
title('1st i/p sequence');
subplot(2,1,2);
compass(X);
title('dft of 1st sequence');
figure
subplot(2,1,1);
stem(h);
title('2nd i/p sequence');
subplot(2,1,2);
compass(H);
title('dft of 2nd sequence');
YY=X.*H;
w=zeros(N,N);
for n=0:N-1
    for k=0:N-1
        w(n+1,k+1)=exp(i*2*pi*n*k/N);
    end;
end;
B=w*YY;
Y=B/N;
disp('Dft of o/p sequence is');
disp(YY.');
disp('IDFT of o/p sequence is');
disp(Y.');
figure
subplot(2,1,1)
compass(YY);
title('o/p DFT sequence of result');
subplot(2,1,2);
compass(Y);
title('circular convoluted o/p');
