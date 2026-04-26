k=10;
s = tf([10],[1 3 2 0]);
[zero,pole,gain] = tf2zp([10],[1 3 2 0])
rlocus(s)
sgrid(0.7 ,1.8)
[gain ,pole] = rlocfind(s)// then select a pt as close
// to the imaginary axis and keeping all poles -ve