alphap = 2;
alphas=20;
wp = [.2*pi , .4*pi];
ws = [.1*pi , .5*pi];

[n, wn] = buttord(wp/pi , ws/pi , alphap,alphas);

[b ,a] = butter(n,wn);

w = 0:0.01:pi;

[h,_]=freqz(b,a,w);
mag =20*log10(abs(h));
subplot(2,1,1);
plot(mag);

an= angle(h);
subplot(2,1,2);
plot(an);


disp(b);
disp(a);