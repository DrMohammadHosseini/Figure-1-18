num=[0.5];
den=[1 2 1 0.5];
 
[re,im]=nyquist(num,den);
plot(re,im,'LineWidth',3)
