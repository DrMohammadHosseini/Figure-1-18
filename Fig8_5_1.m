num=[0.5];
den=[1 2 1 0.5];
[mag,phase]=bode(num,den);
margin(mag,phase);