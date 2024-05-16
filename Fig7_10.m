num=[K]; den=[1 3 2 K];
sys=tf(num,den);
w=logspace(-1,1,400);
[mag,phase,w]=bode(sys,w);
[mp,l]=max(mag);wr=w(l);
zeta=sqrt(0.5*(1-sqrt(1 -1/mp^2)));
wn=wr/sqrt(1 -2*zeta^2);
ts=4/zeta/wn
po=100*exp(-zeta*pi/sqrt(1 -zeta^2))