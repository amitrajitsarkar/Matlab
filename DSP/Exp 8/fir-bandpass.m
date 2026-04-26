/*
.Design a Linear Phase Band Pass FIR filter (using Bartlett/ Triangular window) 
with given specifications 
i)Order of the filter =25.
*/

N=25; 
Order of the filter =25. 
alpha=(N-1)/2; 
eps=.001; 
n=0:1:N-1; 
hd=(1-cos(pi*(n-alpha+eps)))./(pi*(n-alpha+eps)); 
hd(alpha+1)=0; 
wt=bartlett(N); 
hn=hd.*wt'; 
w=0:.01:pi; 
h=freqz(hn,1,w); 
plot(w/pi,abs(h)); 