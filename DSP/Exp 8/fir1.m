/*
Q1.Design a Linear Phase High Pass FIR filter (using both Rectangular and Blackman 
window) with given specifications 
i) 
ii) 
Sol. 
Order of the filter =25. 
Cut off frequency = 0.5π
*/

N = 25;
wc = .5*pi;
alpha = (N-1)/2; %middle index for symmetry

eps = .001; %to avoid division by 0
n=0:1:N-1; % index from 0 to N-1


% Ideal high-pass impulse response (using manual formula)

hd=((sin(pi*(n-alpha+eps)))-(sin(wc*(n-alpha+eps))))./(pi*(n-alpha+eps))

% ----- Using Rectangular (Boxcar) window -----

wr= boxcar(N);
hn= hd .*wr.';

w=.1:pi;

h=freqz(hn,1,w);
plot(w/pi,abs(h));
hold on;
% ----- Using Blackman (blackman) window -----

wb = blackman(N);
hn=hd.*wb.';

w=0:0.01:pi;
h = freqz(hn,1,w);

plot(w/pi,abs(h),'r');

ylabel('Magnitude');
xlabel('Normalized Frequency');
