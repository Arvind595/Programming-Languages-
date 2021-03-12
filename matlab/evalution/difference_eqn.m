%Matlab program to solve the given 2nd order difference equation USN1
%y(n)-.2y(n-1)+.3y(n-2)=x(n)-0.5x(n-1)
%with input x(n)=0.5^n u(n)
%initial conditions(ic): y(-1)=1, y(-2)=2

clc; % to clear command window
clear all; % to clear workspace
close all; % to close all other window

%% total response (in general)

%defining initial conditions
ic1=1; %y(-1)
ic2=2; %y(-2)
% defining input x(n)
n1=0:9;

x=(0.5).^n1;

yt(1)=x(1)+0.2*ic1-0.3*ic2;
yt(2)=x(2)-0.5*x(1)+0.2*yt(1)-0.3*ic1;
for n=3:10
    yt(n)=x(n)-0.5*x(n-1)+.2*yt(n-1)-.3*yt(n-2);
end
disp('Total Response yt(n)=');
disp(yt);

%% Natural Response computation 
%with zeros input and non zero initial conditions
ic1=1;
ic2=2;
%input
x=zeros(1,10);  %%%input x(n)=0
yn(1)=x(1)+0.2*ic1-0.3*ic2;
yn(2)=x(2)-0.5*x(1)+0.2*yn(1)-0.3*ic1;
for n=3:10
    yn(n)=x(n)-0.5*x(n-1)+.2*yn(n-1)-.3*yn(n-2);
end
disp('*********************************');
disp('Natural Response yn(n) =');
disp(yn);

%% Forced Response calculation
%with nonzero input and zero initial conditions
ic1=0;  %% y(-1)=0
ic2=0;  %%y(-2)=0
%input
n=0:9;
x=0.5.^n;  

yf(1)=x(1)+0.2*ic1-0.3*ic2;
yf(2)=x(2)-0.5*x(1)+0.2*yf(1)-0.3*ic1;
for n=3:10
    yf(n)=x(n)-0.5*x(n-1)+.2*yf(n-1)-.3*yf(n-2);
end
disp('*********************************');
disp('Forced Response  yf(n) =');
disp(yf);

%% Total response using natural and forced
yt1=yn+yf;
disp('********************************************************');
disp('Total response using natural and forced resp');
disp(yt1);


%% Responses using inbuilt functions
a=[1,-0.2 0.3]; % coefficients of y
b=[1 -0.5]; % coefficients of x
ic=[1 2]; % initial conditions

 % Natural response
icn=filtic(b,a,ic);
ynatural=filter(b,a,zeros(1,10),icn);
disp('***************************************************************');
disp('Natural response using inbuilt function, ynatural=');
disp(ynatural);

% Forced response
yforced=filter(b,a,x);
disp('***************************************************************');
disp('Forced response using inbuilt function, yforced=');
disp(yforced);
 
%Total Response
icn=filtic(b,a,ic);
ytotal=filter(b,a,x,icn);
disp('***************************************************************');
disp('Total response using inbuilt function, ytotal=');
disp(ytotal);  

%% Plotting of input and ouput sequences
figure;
subplot(2,2,1);
stem(n1,x); 
xlabel('index n------------------------->');
ylabel('Amplitude------------------->');
title('Input sequence');

subplot(2,2,2);
stem(n1,yn); 
xlabel('index n-------------------------->');
ylabel('Amplitude---------------------->');
title('Natural response ');

subplot(2,2,3);
stem(n1,yf); 
xlabel('index n--------------------------->');
ylabel('Amplitude----------------------->');
title('Forced response');

subplot(2,2,4);  
stem(n1,yt); 
xlabel('index n------------------------->');
ylabel('Amplitude--------------------->');
title('Total response ');


