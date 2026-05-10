k =10;
[zero,pole,gain] = tf2zp([k] , [1 3 2 0])
s = tf([k] ,[1 3 2 0]);
rlocus(s)
sgrid(0.7 ,1.8)
rlocfind(s)

// 2 unity feedback

k1= 1;
k2= 2;
k3= 3;

sys1 = tf(conv([k1] ,[1 1 2]) , [1 2 1]);
sys2 = tf(conv([k2] ,[1 1 2]) , [1 2 1]);
sys3 = tf(conv([k3] ,[1 1 2]) , [1 2 1]);

rlocus(sys1);
rlocus(sys2);
rlocus(sys3); 

// 3 open loop tf 

n = conv(conv(conv([100],[1 1]),[1 2]),[1 3.5]) ;
den =  conv(conv([1 0],[1 3]),[1 2 5]); 
s= tf(n ,den);

pzmap(s)



% 32   k / ( s+2)(s+ 4)(s^2 +6s +25)
n=[1];
d = conv(conv([1 ,2],[1,4]),[1 6 25]);
s = tf(n,d);
rlocus(s)


n = [1 1];          % s + 1
d = conv([1 0],[1 -1]);   % s(s-1)

sys = tf(n,d);

rlocus(sys)



clc
clear
close all

n = [1];    % K

d = conv([1 1], [1 2]);
d = conv(d, [1 5]);

sys = tf(n,d);

rlocus(sys)
grid on


% 30 ii
clc
clear
close all

n = [1 15];      % (s + 15)

d = conv([1 0 0],[1 10]);   % s^2(s+10)

sys = tf(n,d);

rlocus(sys)
grid on

p = [0 0 -10];clc
clear
close all

n = [1];          % K

d = conv([1 0],[1 6 10]);   % s(s^2 + 6s + 10)

sys = tf(n,d);

rlocus(sys)
grid on
z = [-15];

centroid = (sum(p)-sum(z))/(length(p)-length(z))


% 64

clc
clear
close all

n = [1];          % K

d = conv([1 0],[1 6 10]);   % s(s^2 + 6s + 10)

sys = tf(n,d);

rlocus(sys)
grid on

% 65
clc
clear
close all

n = [1];      % K

d = conv([1 1],[1 2]);
d = conv(d,[1 5]);

sys = tf(n,d);

rlocus(sys)
grid on

% 66
clc
clear
close all

n = [1];    % K

d = conv([1 0],[1 1]);      % s(s+1)
d = conv(d,[1 2 2]);        % (s^2 + 2s + 2)

sys = tf(n,d);

rlocus(sys)
grid on
