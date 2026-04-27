// 1a
a = [1 3 2 1 1 2 1];
y = roots(a);

//1b
b = conv(conv([2 3],[3 5 2]),[1 1 1 1]);
roots(b)

// 2a gain pole zero

z = [1 3 2 1];
p = [5 3 2 1 1 1];
[zero,pole,gain] = tf2zp(z, p)

// 2b

z=[10 20 10];
p =[6 12 5 0];
[zero,pole,gain] = tf2zp(z, p)

// 3 unity feedback

n=[10 50];
d=[1 1 0];
g=tf(n,d);
feedback(g ,1) // unity feedback

//4 overall tf with +ve feedback

a=tf([10 20],[1 5 6]);
b=tf([1],[1 2]);
feedback(a ,b ,+1) // +ve feedback

//5a block diagram reduction technique

g1 = tf([1],[1 0 0]);
h1 = tf([25],[1]);
t1 = feedback(g1,h1,+1);

g2 = tf([1 0],[1 2]);
h2 = tf([4 2 ],[1 2 1]);
t2 = feedback(g2,h2);

g3=series(t1 ,t2);

h3 = tf([1 0 2] , [1 0 14]);

t3 = feedback(g3 ,h3 );

g4 = tf([4] ,[1]);

series(g4 ,t3)

// b
g1 = tf([1 0],[1 1]);
t1 = feedback(g1 ,1);

g2 = tf([10],[1 5]);
h2 = tf([1],[1 0]);
t2 = feedback(g2 ,h2);

t3 = series(t2 ,t1);

h3 =tf([1] ,[1 1]);

t4 = feedback(t3,h3);

x=tf([1],[1 0]);
series(x ,t4)