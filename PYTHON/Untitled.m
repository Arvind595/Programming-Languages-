A=load('LOG.TXT');
figure(1);
plot(A(:,3),A(:,7))
a=[A(:,3),A(:,7)];
figure(2);
plot(A(:,3),A(:,5))
b=[A(:,3),A(:,5)];
figure(3);
plot(A(:,3),A(:,6))
c=[A(:,3),A(:,6)];

wvtool(a,b,c)

