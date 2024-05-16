K=1800;
%
numg=[1];
deng=[1 15 50 0];
sysg=tf(numg,deng);
numgc=K*[1 3.5];
dengc=[1 25];
sysgc=tf(numgc,dengc);
%
syso=series(sysgc,sysg);
sys=feedback(syso,[1]);
%
t=[0:0.01:2];
step(sys,t)
grid on
X=xlabel('Time ')
Y=ylabel ('c(t)')
T=title('Step Response')
set([X,Y,T],'FontName','times','FontSize',18,'FontAngle','Italic','FontWeight','bold')
set(findall(gcf,'type','axes'),'fontsize',18,'Fontname','Times','fontWeight','bold');