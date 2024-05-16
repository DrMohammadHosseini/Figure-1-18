% Response to a Unit Step Input D(s)=1/s for K=50 and K=100
%
numg=[1];
deng=[1 12 0];
K1=100;
K2=50;

[numa,dena]=feedback(numg,deng,K1,1);
[numb,denb]=feedback(numg,deng,K2,1);

t=[0:0.05:2]; 
[y1,x,t]=step(numa,dena,t);
[y2,x,t]=step(numb,denb,t);
subplot(211);
plot(t,y1);
title('Step Response for K=100')
xlabel('Time (s)');
ylabel('c(t)');
grid on

subplot(212);
plot(t,y2);
title('Step Response for K=50')
xlabel('Time (s)');
ylabel('c(t)');
grid on