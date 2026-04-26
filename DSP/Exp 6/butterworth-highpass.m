alphap = .4;
alphas = 30;
fp =800;
fs = 400;
f =2000;

omp= 2*fp / f;
oms = 2*fs/ f;

[n,wn] = buttord(omp,oms,alphap,alphas);
[b,a] = butter(n,wn, 'high');

w = 0:0.01:pi;

[h,om] = freqz(b,a,w,'whole');

m = 20*log10(abs(h));
subplot(2,1,1);
plot(m);
grid;
xlabel("normalised freq----->");
ylabel("gain----->");

an=angle(h);
subplot(2,1,2);
plot(an);
grid;
xlabel("normalised freq----->");
ylabel("phase----->");

disp(b);
disp(a);