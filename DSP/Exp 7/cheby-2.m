alphap =1;
alphas =20;
wp=.2*pi;
ws=.3*pi;

[n,wn]=cheb2ord(wp/pi,ws/pi,alphap,alphas);
[b,a]=cheby2(n,alphas,wn);

w=0:0.01:pi;

[h,om]=freqz(b,a,w);

mag=20*log10(abs(h));
an=angle(h)

subplot(2,1,1);
plot(om/pi,mag);


subplot(2,1,2);
plot(om/pi,an);

grid on;
disp(b);
disp(a);