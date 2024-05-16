% Remotely Controlled Vehicle
% Nyquist plot for K= .10

numgc=10*[1 2];
dengc=[1 1];
sysgc=tf(numgc,dengc);
numg=[1];
deng=[1 2 4];
sysg=tf(numg,deng);
sys=series(sysgc,sysg);
[Gm,Pm,Wcg,Wcp]=margin(sys);
nyquist(sys);
T=title(['Gm = ',num2str(Gm),', Pm =', num2str(Pm)])


X=xlabel('Real Axis');
Y=ylabel('Imaginary Axis');
set([X,Y,T],'FontName','times','FontSize',14,'FontAngle','Italic','Color','black','FontWeight','bold')
set(findall(gcf,'type','axes'),'fontsize',16,'Fontname','Times','fontWeight','bold');