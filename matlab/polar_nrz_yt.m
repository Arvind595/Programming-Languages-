%nrz unipolar line code
N=10;
n=randi([0 1],1,N);
nn=[] %copy of input bits

%mapping assigning values to levels
for m=1:N
    if n(m)==1
        nn(m)=1;
    else
        nn(m)=0;
    end
end

%nrz pulse shaping

i=1;
t=0:0.1:length(n);
y=[]; %output plot
for j=1:length(t)
    if t(j)<=i
        y(j)=nn(i);
    else
        y(j)=nn(i);
        i=i+1
    end
end

plot(t,y);
axis([0 N -1.5 1.5]);