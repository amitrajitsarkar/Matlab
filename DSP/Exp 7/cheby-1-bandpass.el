alphap =2;
alphas =20;
wp=[.2*pi,.4*pi]; 
ws=[.1*pi,.5*pi];

[n,wn]=cheb1ord(wp/pi,ws/pi,alphap,alphas);
[b,a]=cheby1(n,alphap,wn);

w=0:0.01:pi;

[h,om]=freqz(b,a,w);

mag=20*log10(abs(h));
an=angle(h)

subplot(2,1,1);
plot(om/pi,mag);


subplot(2,1,2);
plot(om/pi,an);

disp(b);
disp(a);