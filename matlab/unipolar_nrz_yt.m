%nrz unipolar line code
N=10;
n=randi([0 1],1,N);
nn=[] %copy 
%mapping
for m=1:N
    if n(m)==0 %for polar, for unipolar replace 0 with 0
        nn(m)=-1;
    else
        nn(m)=1;
    end
end

%nrz pulse shaping

i=1;
y=[];
t=0:0.01:length(n);
for j=1:length(t)
    if t(j)<=i
        y(j)=nn(i);
    else
        y(j)=nn(i);
        i=i+1
    end
end

plot(t,y);
axis([0 N -2 2]);