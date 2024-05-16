% This script computes the step
% response of the traction motor
% wheel velocity
%
num=[5400];
den=[2 2.5 5402];
t=[0:0.005:3];
[y,x,t]=step(num,den,t);
plot(t,y,'black','LineWidth',3)
grid
X=xlabel('Time (sec)')
Y=ylabel('Wheel velocity')

set([X,Y],'FontName','times','FontSize',18)
set(findall(gcf,'type','axes'),'FontSize',20,'FontName','Times','FontWeight','bold');
