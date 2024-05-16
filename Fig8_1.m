clc
clear all
H=tf([2 3 3],[2 1 1]);
nyquist(H)

X=xlabel('Real Axeis')
Y=ylabel('Imaginary Axis')

set([X,Y],'FontName','times','FontSize',18,'FontAngle','Italic','FontWeight','bold')
set(findall(gcf,'type','axes'),'fontsize',20,'Fontname','Times','fontWeight','bold'0);