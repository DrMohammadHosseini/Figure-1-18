Ks=118;
a=16;
b=70;
K=2;

K3=Ks-2;
K1=a*(2+K3)-1;
K2=b*(2+K3)
numgc=K*[K3 K1 K2];
dengc=[1 0];
sysgc=tf(numgc,dengc);
numg=[1];
deng=[1 2 1];
sysg=tf(numg,deng);
%
hold on
syso=series(sysgc,sysg);
%
sys=feedback(syso,[1]);
step(sys)
axis([0 0.3 0 1.2])

X=xlabel('Time')
Y=ylabel('Amplitude')
T=title('Step Response')

set([X,Y,T],'FontName','times','FontSize',18,'FontAngle','Italic','FontWeight','bold')
set(findall(gcf,'type','axes'),'fontsize',18,'Fontname','Times','fontWeight','bold');