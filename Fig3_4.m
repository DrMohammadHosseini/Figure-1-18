% clostach.m
% Speed Tachometer Example

Ra=1; Km=10; J=2; b=0.5; Kb=0.1; Ka=54; Kt=1;
num1=[1]; den1=[J,b];
num2=[Ka*Kt]; den2=[1];
num3=[Kb]; den3=[1];
num4=[Km/Ra]; den4=[1];
[numa,dena]=parallel(num2,den2,num3,den3);
[numb,denb]=series(numa,dena,num4,den4);
[num,den]=feedback(num1,den1,numb,denb);
%
num=-num
printsys(num,den)
%
[yc,x,t]=step(num,den,0.02);
plot(t,yc,'black','LineWidth',3)
T=title('Closed-Loop Disturbance Step Response')
X=xlabel('Time [sec]')
Y=ylabel('speed [rad/sec]')
grid
%
yc(length(t))
set([T,X,Y],'FontName','times','FontSize',18)
set(findall(gcf,'type','axes'),'FontSize',20,'FontName','Times','FontWeight','bold');
