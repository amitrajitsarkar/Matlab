//  linear convulation
/*  
X1(n) =1 for 0<=n<=10      
X2(n) =1 for 0<=n<=10 
*/
x1 = ones(1,10);
x2 = ones(1,10);
N1 = length(x1);
N2 = length(x2);
N = 0:N1+N2-2;
X = conv(x1,x2);
stem(N,X);

x1=[1 2 3 4];
x2=[1 2 3 4];
N1=length(x1); 
N2=length(x2); 
N= 0:N1+N2-2;
stem(N,conv(x1, x2));
title("Hello world");
