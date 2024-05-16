num=[0.5];
den=[1 2 1 0.5];
sys=tf(num,den)
w=logspace(-1,1,200);
%[mag,phase,w]=bode(num,den,w);
[mag,phase,w]=bode(sys,w);
margin(mag,phase,w)



axes=findobj('type','axes')
h_magnitude=get(axes(2),'YLabel')
h_phase=get(axes(1),'YLabel')
set(h_magnitude,'String','Magnitude (dB)')
set(h_phase,'String','Phase (deg)')
set([axes(1),axes(2)],'FontName','times','FontSize',14,'FontAngle','Italic','FontWeight','bold')
set([h_magnitude,h_phase],'FontName','times','FontSize',14,'FontAngle','Italic','FontWeight','bold')

%T=title ('Bode Diagram')
X=xlabel('Frequency');
%set('LineWidth',3)
set(axes,'ycolor','black')
set(axes,'xcolor','black')
%set(gca,'FontName','times','FontSize',14)
set([X],'FontName','times','FontSize',14,'FontAngle','Italic','Color','black','FontWeight','bold')
%grid on




set(findall(gcf,'type','axes'),'fontsize',20,'Fontname','Times','fontWeight','bold');