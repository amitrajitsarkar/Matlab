/*
 Find out 64 point DFT of the following sequences using MATLAB. 
(a) Exponential sequence  
(b) square wave 
(c) unit step sequence  
(d) Saw tooth wave 

(a) 64 point DFT of an exponential sequence x=2e [-0.8+ (pi/6)i]n of length 64.

(b) 64 point DFT of a Square sequence of length 64

(c) 64 point DFT of a Unit Step sequence of length 64

(d) 64 point DFT of a Saw tooth sequence of length 64
*/

n=0:63;
xn=2*exp((-0.8 +( (pi/6)*i))*n);
xk = fft(xn,64);
subplot(2,2,1);
stem(n,xk);
title("  a  ")

%(b)===

n = 0:63;
xn1=square(n);
xk1 = fft(xn1,64);
subplot(2,2,2);
stem(n,xk1);
title("  b  ")

%(c)===

n = 0:63;
xn2=[ones(1,64)];
xk2 = fft(xn2,64);
subplot(2,2,3);
stem(n,xk2);
title("  c  ")

%(d)===

n = 0:63;
xn3=sawtooth(n);
xk3 = fft(xn3,64);
subplot(2,2,4);
stem(n,xk3);
title("  d  ")