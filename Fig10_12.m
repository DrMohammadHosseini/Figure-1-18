numg=[1];
deng=[1 15 50 0];
sysg=tf(numg,deng);
numgc=[1 0.1];
dengc=[1 0.01];
sysgc=tf(numgc,dengc);
sys=series(sysgc,sysg);
clf;
rlocus(sys);
hold on
%
zeta=0.5912;
wn=2.2555;
x=[-10:0.1 :-zeta*wn];
y=-(sqrt(1-zeta^2)/zeta)*x;
xc=[-10:0.1 :-zeta*wn];
c=sqrt(wn^2-xc.^2);
plot(x,y,':',x,-y,':',xc,c,':',xc,-c,':')
axis([-15,1 ,-10,10]);


X=xlabel('Real Axis')
Y=ylabel('Imaginary Axis')
T=title('Root locus')

set([X,Y,T],'FontName','times','FontSize',18,'FontAngle','Italic','FontWeight','bold')
set(findall(gcf,'type','axes'),'fontsize',18,'Fontname','Times','fontWeight','bold');