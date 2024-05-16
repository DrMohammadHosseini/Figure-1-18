a=16;
b=70;
num=[1 a b];
den=[1 0 0 0];
rlocus(num,den)
rlocfind(num,den)
grid

X=xlabel('Real Axis')
Y=ylabel('Imaginary Axis')
T=title('Root locus')

set([X,Y,T],'FontName','times','FontSize',18,'FontAngle','Italic','FontWeight','bold')
set(findall(gcf,'type','axes'),'fontsize',18,'Fontname','Times','fontWeight','bold');

axis([-10 30 -15 15])