% Response to a Unit Step Input R(s)=1/s for K=50 and K=100
%
numg=[1];
deng=[1 12 0];
K1=100;
K2=50;
num1=K1*numg;
num2=K2*numg;
[numa,dena]=cloop(num1,deng);
[numb,denb]=cloop(num2,deng);

t=[0:0.05:2]; 
[y1,x,t]=step(numa,dena,t);
[y2,x,t]=step(numb,denb,t);
subplot(211);
plot(t,y1,'LineWidth',3);
T=title('Step Response for K=100')
X=xlabel('Time (s)');
Y=ylabel('c(t)');
set([X,Y,T],'FontName','times','FontSize',18,'FontAngle','Italic')
grid on

subplot(212);
plot(t,y2,'LineWidth',3);
T=title('Step Response for K=50')
X=xlabel('Time (s)');
Y=ylabel('c(t)');
set([X,Y,T],'FontName','times','FontSize',18,'FontAngle','Italic')
grid on
