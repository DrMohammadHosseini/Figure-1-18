% Compare step response for second-order approximation
%
num1=[6];
den1=[1 6 11 6];

num2=[1.6];
den2=[1 2.594 1.6];
t=[0:0.1:8];

[y1,x,t]=step(num1,den1,t);
[y2,x,t]=step(num2,den2,t);
plot(t,y1,t,y2,'--','LineWidth',3)
grid
X=xlabel('Time (s)')
Y=ylabel('Step Response')
L=legend('third order system','second order approximation')

set(gca,'FontName','times','FontSize',18)
set([X,Y,L],'FontName','times','FontSize',18,'FontAngle','Italic')