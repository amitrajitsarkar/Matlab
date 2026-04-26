x=input("x sequence: ");
h=input("h sequence: ");
m=length(x);
n=length(h);
%x sequence
subplot(2,2,1);
stem(x);
title("i/p of x sequence--");
xlabel("n====>");
ylabel("amplitude====>");
%h sequence
subplot(2,2,2);
stem(h);
title("i/p of h sequence--");
xlabel("n====>");
ylabel("amplitude====>");
y1=fft(x,n);
y2=fft(h,n);
y3 = y1.*y2;
y=ifft(y3,n);
subplot(2,2,[3,4]);
stem(y);
title('circular convolution of x(n) & h(n) is y(n):');
ylabel("amplitude------>");
xlabel("n------->");
grid;