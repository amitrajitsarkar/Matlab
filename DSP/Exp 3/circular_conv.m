// simple circular conv of 2 dts
// asking sequence
x=input(" x sequence:");
h=input(" h sequence:");
//length
N1=length(x);
N2=length(h);
N=max(N1,N2);
%pad with 0 to length N
x=[x zeros(1,N-N1)];
h =[h zeros(1,N-N2)];
for n=0:N-1
    y(n+1)=0;
    for i=0:N-1
        j=mod(n-i,N);
        y(n+1)=y(n+1)+x(i+1)*h(j+1);
    end
end
disp(y);
stem(y);


// cc
x=[2 3 4 5 6];
h=[2 7 5 3];
N1=length(x);
N2=length(h);
N=max(length(x),length(h));
%padding==
x=[x zeros(1,N-N1)];
h=[h zeros(1,N-N2)];
%initialization of the result===
y=zeros(1, N);
% main logic=====
for n=0:N-1
 s=0;
 for i=0:N-1
    j=mod(n-i,N);
    s=s+x(i+1)*h(j+1);
 end
 y(n+1)=s;
end
disp(y);
stem(y);

// usinf cconv

x = [2 3 4 5 6] 
h = [2 7 5 3] 
y=cconv(x,h,max(length(x),length(h)));
disp(y)