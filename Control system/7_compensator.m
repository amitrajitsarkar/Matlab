g = tf([10] ,[0.2 1 0]);
gf = feedback(g ,1);
step(gf)
gl = tf([0.18 1] ,[0.07 1]);
gc = g - gl;
gf = feedback(gc ,1);
step(gf)
