K=100;
%
numg=[1];
deng=[1 15 50 0];
sysg=tf(numg,deng);
numgc=K*[1 0.1];
dengc=[1 0.01];
sysgc=tf(numgc,dengc);
%
syso=series(sysgc,sysg);
sys=feedback(syso,[1])
%
step(sys)
grid on
X=xlabel('Time')
Y=ylabel('Amplitude')
T=title('Step Response')

set([X,Y,T],'FontName','times','FontSize',18,'FontAngle','Italic','FontWeight','bold')
set(findall(gcf,'type','axes'),'fontsize',18,'Fontname','Times','fontWeight','bold');