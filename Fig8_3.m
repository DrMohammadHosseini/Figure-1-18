num=[0.5];
den=[1 2 1 0.5];

[re,im]=nyquist(num,den);
plot(re,im,'LineWidth',3)
axis([-1,0.1,-0.1,0.1])
grid on
X=xlabel('Real Axeis')
Y=ylabel('Imaginary Axis')

set([X,Y],'FontName','times','FontSize',18,'FontAngle','Italic','FontWeight','bold')
set(findall(gcf,'type','axes'),'fontsize',20,'Fontname','Times','fontWeight','bold');

