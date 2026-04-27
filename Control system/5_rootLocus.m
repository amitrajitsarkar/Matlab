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

