K=7;
num=[1];
den=[1 1 20 K];
sys=tf(num,den);
t=[0:0.01:3];
y=step(sys,t);
plot(t,y,'black','LineWidth',3);
grid
X=xlabel('Time (s)')
Y=ylabel('C(t)')

set([X,Y],'FontName','times','FontSize',18,'FontAngle','Italic','FontWeight','bold')
set(findall(gcf,'type','axes'),'fontsize',20,'Fontname','Times','fontWeight','bold');