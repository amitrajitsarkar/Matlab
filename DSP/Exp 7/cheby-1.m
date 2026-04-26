alphap =1;
alphas =15;
wp=.2*pi;
ws=.3*pi;

[n,wn]=cheb1ord(wp/pi,ws/pi,alphap,alphas);
[b,a]=cheby1(n,alphap,wn);

w=0:0.01:1;

[h,om]=freqz(b,a,w);

mag=20*log10(abs(h));
an=angle(h)

subplot(2,1,1);
plot(mag);


subplot(2,1,2);
plot(an);

disp(b);
disp(a);