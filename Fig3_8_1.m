% System Sensitivity Plot %
K=50;
num=[1 12 0];
den=[1 12 K];
w=[0.1:0.05:20];
s=w*i; 

n=s.^2 +12*s;
d= s.^2+12*s+K;
S=n./d;
n2=12*s;
d2=K;
S2=n2./d2;

subplot(211), 
plot(real(S),imag(S))
title('System Sensitivity to Plant Variations')
xlabel('Real(S)');
ylabel('lmag(S)')
grid

subplot(212),
plot(w,abs(S),w,abs(S2))
xlabel('\omega(rad/s)');
ylabel('Abs(S)');
grid