/*  Compute and sketch the 128 point DFT of the signal xam[n], 
0≤n≤127 
*/
n=0:127;
xn= cos( 2*pi*(1/128)*n)+ cos(2*pi*(5/128)*n);
xk=fft(xn,128);
stem(n,xk);

/*
 Compute and sketch the 100 point DFT of the signal xam[n], 0≤n≤99
*/

n=0:99;
xn= (cos( 2*pi*(1/128)*n)+ cos(2*pi*(5/128)*n)).*(cos(2*pi*(50/128)*n));
xk=fft(xn,100);
stem(n,xk);
