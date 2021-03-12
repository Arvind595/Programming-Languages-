clear all; close all; clc;



% Accept user-defined input sequences and define time index for it
x1 = input('Enter a finite-length signal sequence X1(n): ');
n1 = 0:length(x1)-1;
x2 = input('Enter a finite-length signal sequence X2(n): ');
n2 = 0:length(x2)-1;
x= max(x1,x2);
% Perform Cross - Correlation using xcorr function.
rxy = xcorr(x1,x2);
% rxy(l)
ryx = xcorr(x2,x1);
% ryx(l)
% Generate Time Index for Cross - Correlation sequence, about origin
n3 = -length(x)+1:length(x)-1;
disp('Cross - Correlation Sequence rxy(l): ');
disp(int8(rxy));
disp('Cross - Correlation Sequence ryx(l): ');
disp(int8(ryx));


% Plot the Original Signal and Cross - Correlation Sequence
subplot(3,1,1);
stem(n1,x1);
title('Input Signal 1');
xlabel('n'); ylabel('x1(n)');


subplot(3,1,2);
stem(n2,x2);
title('Input Signal 2');
xlabel('n'); ylabel('x2(n)');


subplot(3,1,3);
stem(n3,rxy);
title('Cross - Correlation Sequence');
xlabel('n'); ylabel('rxy(l)');
grid on;


E1 = sum(x1.^2); % Energy of signal 1.
E2 = sum(x2.^2); % Energy of signal 2.
mid = ceil(length(rxy)/2);% Find index of centre of sequence
E0 = abs(max(rxy));% Detect Max Amplitude of Sequence
fprintf('Energy of Input Signal X1 : %d\n',E1);
fprintf('Energy of Input Signal X2 : %d\n',E2);
fprintf('Max Amplitude of Cross - Correlation Sequence : %d\n',E0);



% Verify Cross - Correlation Property by comparing Energy values
% Max amplitude of Sequence should be less than sqrt(E1*E2).
if int8(E0) <= int8(sqrt(E1*E2))
%Type conversion to 8-bit
int
disp('Cross - Correlation Energy Property is verified');
else
disp('Cross - Correlation Energy Property is not verified');
end



% Verify Signal property : rxy(l)=ryx(-l).
if rxy == fliplr(ryx)
disp('Since rxy(l) = ryx(-l), Cross - Correlation property isverified.');
else
disp('Cross - Correlation property is not verified.');
end
