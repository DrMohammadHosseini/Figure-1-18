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

plot(real(S),imag(S),'LineWidth',3)
title('System Sensitivity to Plant Variations')
X=xlabel('Real(S)');
Y=ylabel('lmag(S)')
set([X,Y],'FontName','times','FontSize',18,'FontAngle','Italic')
grid


subplot(212),
plot(w,abs(S),'LineWidth',3)
hold on
plot(w,abs(S2),'--')
X=xlabel('\omega(rad/s)');
Y=ylabel('Abs(S)');
hold off
set([X,Y],'FontName','times','FontSize',18,'FontAngle','Italic')
grid