%Compute the response of the Mobile Robot Control
%System to a triangular wave input
%
numg=[10 20]; 
deng=[1 10 0]; 
[num,den]=cloop(numg,deng);
t=[0:0.1:8.2]';
v1=[0:0.1:2]';
v2=[2:-0.1:-2]';
v3=[-2:0.1:0]';
u=[v1;v2;v3];
[y,x]=lsim(num,den,u,t);
plot(t,y,t,u,'--','LineWidth',3);
T=title('response of the Mobile Robot Control')
X=xlabel('Time (s)')
Y=ylabel('\theta (rad)')
L=legend('input','output')

grid

set(gca,'FontName','times','FontSize',18)
set([X,Y,T,L],'FontName','times','FontSize',18,'FontAngle','Italic')