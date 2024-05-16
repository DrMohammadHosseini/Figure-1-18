% Liquid Control System Analysis
%
K=16;
num=K*[0.0743 -0.4460 0.8920];
d1=[1 1];
d2=[30 1];
d3=[1/9 1/3 1];
d4=[0.0743 0.4460 0.8920];

den=conv(d1,conv(d2,conv(d3,d4)));
w=logspace(-2,1,400);
[mag,phase,w]=bode(tf(num,den),w);
[Gm,Pm,Wcg,Wcp]=margin(mag,phase,w)

bode(tf(num,den))
title(['Gm = ',num2str(Gm),' Pm =',num2str(Pm)])
grid on



X=xlabel('Frequency');
Y=ylabel('Gain');
set([X,Y],'FontName','times','FontSize',16,'FontAngle','Italic','Color','black','FontWeight','bold')

set(findall(gcf,'type','axes'),'fontsize',16,'Fontname','Times','fontWeight','bold');

axes=findobj('type','axes')
h_magnitude=get(axes(2),'YLabel')
h_phase=get(axes(1),'YLabel')
set(h_magnitude,'String','Gain (dB)')
set(h_phase,'String','Phase (deg)')
set([axes(1),axes(2)],'FontName','times','FontSize',14,'FontAngle','Italic','FontWeight','bold')
set([h_magnitude,h_phase],'FontName','times','FontSize',14,'FontAngle','Italic','FontWeight','bold')
