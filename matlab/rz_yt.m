%rz unipolar
N=10;
%n=[1 0 1 0]
n=randi([0 1],1,N);
nn=[];
%no mapping needed for unipolar
for m=1:N
    if n(m)==0
        nn(m)=-1;
    else
        nn(m)=1;
    end
end


%pulse shaping
i=1;
a=0;
b=0.5;
y=[];
t=0:0.01:length(n);

for j=1:length(t)
    if t(j)>=a && t(j)<=b
        y(j)=nn(i);
    elseif t(j)>=b && t(j)<=i
        y(j)=0;
    else 
        %y(j)=0;
        i=i+1;
        a=a+1;
        b=b+1;
    end
end
plot(t,y);
axis([0 N -2 2]);
        
      