alphap = .4;    % passband ripple in dB
alphas = 30;    % stopband attenuation in dB
fp = 400;       % passband frequency
fs = 800;       % stopband frequency
f = 2000;       % sampling frequency

omp = 2*fp/f;   %NORMALIZED DIGITAL FREQUENCIES
oms = 2*fs/f;   %NORMALIZED DIGITAL FREQUENCIES 

[n,wn]= buttord(omp,oms,alphap,alphas);
[b,a] = butter(n,wn); %filter coefficients
w=0 : 0.01 : pi;

[h,om]=freqz(b,a,w,'whole');

m=20*log10(abs(h));
subplot(2,1,1);
plot(m);
grid;
xlabel("freq----->");
ylabel("gain----->");

an=angle(h);
subplot(2,1,2);
plot(an);
grid;
xlabel("freq----->");
ylabel("phase----->");
