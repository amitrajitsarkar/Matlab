//  addition 
n=0:3;
a=[1 2 3 4];
b=[4 2 3 1];
c = a+b;
stem(n,c);

//  folding of DTS
n=0:3;
x=[1 -2 3 -4];
subplot(2,1,1);
stem(n,x);
title("Actual signal");

m=fliplr(-n);
y=fliplr(x);
subplot(2,1,2);
stem(m,y);
title("folded signal");
//  delay + addition

N = input("Enter the delay: ");
n=-3:3;
x=[2 3 5 7 9 2 4];
subplot(2,1,1);
stem(n,x);
title("Actual signal");

m = n+N;
subplot(2,1,2);
stem(m,x);
title("changed signal");
 
 // advancement - minus