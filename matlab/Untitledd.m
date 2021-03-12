%%type 3 fir filter (differentiator)

N=51;
n=0:N-1;
wc=0.5*pi;
alpha= (N-1)/2;
h=(cos(pi*(n-alpha)))./(n-alpha)
h(alpha+1)=0;

rectw=ones(1,N); %rectangular window

hrect=h.*rectw;

figure(1);
subplot (2,1,1)
stem(hrect)
grid on
xlabel('n')
ylabel('h(n)')
title ('IMPULSE RESPONSE USING REACTINDON');
subplot (2,1,2)
stem (rectw)
grid on
xlabel('n')
ylabel('h(n)')
title ('RECT winNDOW');
figure(3);
freqz(hrect);
title('frequency response using rect window')
figure,
zplane (hrect, 1)