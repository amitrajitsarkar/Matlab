n=1:10;
y=[1 zeros(1,9)];
stem(n,y);

// unit step
n=1:10;
y=[ones(1,10)];
stem(x,y);

// exponential sequence

n=1:50;
x=-.8+(pi/6)*i;
y=2*exp(x*n);
stem(n,img(y))

//sino soidal
cause it starts from the 0 sinosidal waves
n=0:49;
f = .1;
amp =2;
x=2*pi*f*n;
y=amp*cos(x);
stem(n,y);

 // random signal within 0,1

 n=0:49;
 a=0;
 b=1;
 range = rand(1,100);
 x=a*(b-a)*range;
 stem(n,x);

//  random gaussian

n=0:99;
mean= 0;
var = 3;
x= mean+sqrt(var)*randn(1,100);


n=0:99;
mean= 0.6;
var = 3;
stddev =sqrt(var)
x= mean+stddev*randn(1,100);
stem(n,x);

// duty cycle sawTooth

n=0:39;
dutyCycle = .5;
x=sawtooth(n,dutyCycle);
stem(n,x);

n=0:39;
dutyCycle = 1;
x=sawtooth(n,dutyCycle);
stem(n,x);

//  square wave
// 40 duty clycle given
n=0:.0001:.0625;
y=square(2*pi*30*n,40);
plot(n,y);
