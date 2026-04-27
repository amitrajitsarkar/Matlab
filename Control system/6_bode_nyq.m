// 1a

sys1 = tf([10] ,conv(conv([1 0] ,[1 1]), [0.02 1]));
bode(sys1);
margin(sys1); //  gives the stable points

ltiview
// same 1b

// 2 a nyquist

// poles are needed for calculating the n = z - p (numbers of them)

sys1 = tf([7] , [1 0 7]);
[z,p,k] = tf2zp([7] ,[1 0 7])
nyquist(sys1)

// 2b
sys1 = tf([7] , [1 5.6 7]);
[z,p,k] = tf2zp([7] , [1 5.6 7])
nyquist(sys1);


// 3
neu = - [1 4 6];
den = [1 5 4];

[z,p,k] = tf2zp(neu ,den)

s = tf(neu ,den) ;
nyquist(s)
