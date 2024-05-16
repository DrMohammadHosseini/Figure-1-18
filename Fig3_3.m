%Speed Tachometer Example
%
Ra=1;
Km=10;
J=2;
f=0.5;
Kb=0.1;
num1=[1];
den1=[J,f];
num2=[Km*Kb/Ra];
den2=[1];
[num,den]=feedback(num1,den1,num2,den2);
num=-num
printsys(num,den)
[yo,x,t]=step(num,den);
plot(t,yo,'black','LineWidth',3)
T=title('Open-Loop Disturbance Slep Response')
X=xlabel('Time (sec)')
Y=ylabel('speed')
grid
%
yo(length(t))
set([T,X,Y],'FontName','times','FontSize',18)
set(findall(gcf,'type','axes'),'FontSize',20,'FontName','Times','FontWeight','bold');
