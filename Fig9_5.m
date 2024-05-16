% Root locus script for the Automatic Test System
% including performance specs regions
num=[1 8 20];
den=[1 6 5 0];
sys=tf(num,den);
clf;
rlocus(sys);
hold on
% ^
zeta=0.72;
wn=2.8;
x=[-10:0.1 :-zeta*wn];
y=-(sqrt(1 -zeta^2)/zeta)*x;
xc=[-10:0.1:-zeta*wn];
c=sqrt(wn^2-xc.^2);
plot(x,y,':',x,-y,':',xc,c,':',xc,-c,':')
axis([-10,1,-10,10])

T=title('Root Locus')
X=xlabel('Real Axis');
Y=ylabel('Imaginary Axis');
set([X,Y,T],'FontName','times','FontSize',14,'FontAngle','Italic','Color','black','FontWeight','bold')
set(findall(gcf,'type','axes'),'fontsize',16,'Fontname','Times','fontWeight','bold');