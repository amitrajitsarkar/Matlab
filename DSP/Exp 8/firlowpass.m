/*
Design a Linear Phase Low Pass FIR filter (using Fourier series) with given 
specifications 
i) 
ii) 
Sol. 
Order of the filter =11. 
Cut off frequency = 0.5π
*/

wc=.5*pi; 
N=11; 
hd=zeros(1,N); 
hd(1)=wc/pi; 
k=1:1:((N-1)/2)+1; 
hd(k+1)=(sin(wc*k))./(pi*k); 
hn(k)=hd(k); 
a=(N-1)/2; 
w=0:pi/16:pi; 
Hw1=hn(1)*exp(-j*w*a); 
Hw2=0; 
for m=1:1:a 
Hw3=hn(m+1)*((exp(j*w*(m-a)))+(exp(-j*w*(m+a)))); 
Hw2=Hw2+Hw3; 
end 
Hw=Hw2+Hw1; 
H_mag=abs(Hw) 
plot(w/pi,H_mag,'k'); 
grid; 
title('Magnitude Response') 
xlabel('Normalized Frequency') 
ylabel('Magnitude') 
