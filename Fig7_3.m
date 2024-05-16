
num=5*[0.1 1];
f1=[1 0]; f2=[0.5 1]; f3=[1/2500 .6/50 1];
den=conv(f1,conv(f2,f3));
sys=tf(num,den);
w=logspace(-1,30,200)
bode(sys,w)
grid on
axes=findobj('type','axes')
h_magnitude=get(axes(2),'YLabel')
h_phase=get(axes(1),'YLabel')
set(h_magnitude,'String','Magnitude (dB)')
set(h_phase,'String','Phase (deg)')
set([axes(1),axes(2)],'FontName','times','FontSize',12,'FontAngle','Italic','FontWeight','bold')
set([h_magnitude,h_phase],'FontName','times','FontSize',12,'FontAngle','Italic','FontWeight','bold')

T=title ('Bode Diagram')
X=xlabel('Frequency');
%set('LineWidth',3)
set(axes,'ycolor','black')
set(axes,'xcolor','black')
%set(gca,'FontName','times','FontSize',14)
set([X,T],'FontName','times','FontSize',14,'FontAngle','Italic','Color','black','FontWeight','bold')