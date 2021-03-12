clc
clear all
close all
x=input('enter the frist sequence x(n)=')
h=input('enter the second sequence h(n)=')
d=input('enter the third sequence d(n)=')
lx=length(x)
lh=length(h)
ld=length(d)

if ((ld==lx) & (lh==lx))
    
disp('testing all the proprieties of linear convolution')

a1=conv(x,h)
a2=conv(h,x)
a3=conv(conv(x,h),d)
a4=conv(x,conv(h,d))
a5=conv(x,(h+d))
a6=conv(x,h)+conv(x,d)

if (a1==a2)
    disp('commutative property is satisfied!!');
else
    disp('commutative property is not satisfied!!');
end
if (a3==a4) 
    disp('associative property is satisfied!!'); 
else
    disp('associative property is not satisfied!!');
end
if (a5==a6) 
    disp('distributive property is satisfied!!'); 
else
    disp('distributive property is not satisfied!!');
end
else  disp('dimensional error of input sequence');
end
         
     