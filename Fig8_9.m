num=[1];
den=[0.2 1.2 1 0];
w=logspace(-1,1,400);
nichols(num,den,w)
axis([-210,0,-24,36])
ngrid

T=title('Nichols Chart')
X=xlabel('Open-Loop Phase');
Y=ylabel('Open-Loop Gain');
set([X,Y,T],'FontName','times','FontSize',16,'FontAngle','Italic','Color','black','FontWeight','bold')

set(findall(gcf,'type','axes'),'fontsize',16,'Fontname','Times','fontWeight','bold');