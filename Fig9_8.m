A=[0 -2;1 -3];
B=[2;0];
D=[1 0];
H=[0];
x0=[1 1];
t=[0:0.01:1];
u=0*t;
[y,x]=lsim(A,B,D,H,u,t,x0);
subplot(211)
plot(t,x(:,1),'LineWidth',3)
X=xlabel('time (s)')
Y=ylabel('x1')
set([X,Y],'FontName','times','FontSize',18,'FontAngle','Italic','FontWeight','bold')
set(findall(gcf,'type','axes'),'fontsize',20,'Fontname','Times','fontWeight','bold');

subplot(212)
plot(t,x(:,2),'LineWidth',3)
X=xlabel('time (s)')
Y=ylabel('x2')
set([X,Y],'FontName','times','FontSize',18,'FontAngle','Italic','FontWeight','bold')
set(findall(gcf,'type','axes'),'fontsize',20,'Fontname','Times','fontWeight','bold');

