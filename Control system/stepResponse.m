// 1 1nd order fn
g=tf([1],[1 5]);
y =feedback(g ,1);
step(y)

ltiview

// 2 2nd order fn
g = tf([1], [1 2 1]);
y = feedback(g ,1)
step(y)

ltiview

//3 
wn =1;

d1 = input("Enter a damping ratio : ");
d2 = input("Enter a damping ratio : ");
d3 = input("Enter a damping ratio : ");
d4 = input("Enter a damping ratio : ");
d5 = input("Enter a damping ratio : ");

g1 = tf([wn*wn] ,[1 2*d1*wn 0]);
g2 = tf([wn*wn] ,[1 2*d2*wn 0]);
g3 = tf([wn*wn] ,[1 2*d3*wn 0]);
g4 = tf([wn*wn] ,[1 2*d4*wn 0]);
g5 = tf([wn*wn] ,[1 2*d5*wn 0]);

sys1 = feedback(g1 ,1);
sys2 = feedback(g2 ,1);
sys3 = feedback(g3 ,1);
sys4 = feedback(g4 ,1);
sys5 = feedback(g5 ,1);

ltiview
