%1
g = tf(conv(conv([10] ,[1 14]),[1 15]) ,conv(conv([1 1],[1 2]),[1 3]));
sys = feedback(g ,1);
step(sys)

%2
>> g = tf([1],[1 0.4 0 0])

g =
 
        1
  -------------
  s^3 + 0.4 s^2
 
Continuous-time transfer function.
Model Properties
>> g = tf([1],[1 0.4 0 ])

g =
 
       1
  -----------
  s^2 + 0.4 s
 
Continuous-time transfer function.
Model Properties
>> g = tf([1],[1 0.4 0 0])

g =
 
        1
  -------------
  s^3 + 0.4 s^2
 
Continuous-time transfer function.
Model Properties
>> sys = feedback(g ,1)

sys =
 
          1
  -----------------
  s^3 + 0.4 s^2 + 1
 
Continuous-time transfer function.
Model Properties
>> step(sys)

%3
g = tf([1],[4 3 0]);
sys = feedback(g ,1);
step(sys)
impulse(sys)
 