% 1(a) open loop unit step response 
step([1] ,[1 10 20])

% 1(b) close loop unit step response kp =300

kp =[300];
neu = kp;
step(kp , [1 10 20 +kp])

% 1(c) close loop unit step response kp =300 and kd 10
kp = 300 ;
kd = 10;

neu = [kd kp];

step(neu ,[1 10+kd 20+kp])

% 1(d) close loop unit step response kp =30 and ki 70
kp = 30 ;
ki = 70 ;

neu = [kp ki];

step(neu , [1 10 20+kp ki] , 0:0.001:2);

% 1(5) close loop unit step response kd = 50 ,kp =350 and ki 300
kd = 50 ;
kp = 350 ;
ki = 300 ;

neu = [kd kp ki];

step(neu , [1 10+kd 20+kp ki] , 0:0.001:2);


% 2 STEP RESPONSE WITH CONTROL

sys = tf([1.6] , [1 1.6 0]);
sys1 = feedback(sys ,1);
kd = 10 ; kp =0.3 ;

sys2 = tf([kd*kp kp] ,[1]);
sys3 = sys * sys2;
sys4 = feedback(sys3 ,1);
% ltiview(sys1 ,sys4) 

step(sys1, sys4)
legend('Without Controller', 'With PD Controller')


