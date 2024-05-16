% Remotely Controlled Battlefield Vehicle
%
numgc=[1 2];
dengc=[1 1];
sysgc=tf(numgc,dengc);
numg=[1];
deng=[1 2 4];
sysg=tf(numg,deng);
sys=series(sysgc,sysg);
%
w=logspace(-1,1,200);
%
K=[20,10,4.44];
hold off,clf
for i=1:3
    nichols(K(i)*sys,w), ngrid
    hold on
end

T=title('Nichols Chart')
X=xlabel('Open-Loop Phase');
Y=ylabel('Open-Loop Gain');
set([X,Y,T],'FontName','times','FontSize',16,'FontAngle','Italic','FontWeight','bold')

set(findall(gcf,'type','axes'),'fontsize',16,'Fontname','Times','fontWeight','bold');