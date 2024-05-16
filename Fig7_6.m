clear all
close all
clc


K=2
num=[K];
den=[1 3 2 K];
sys=tf(num,den);
w=logspace(-1,1,400);
[mag,phase,w]=bode(sys,w);
[mp,l]=max(mag);wr=w(l);
zeta=sqrt(0.5*(1-sqrt(1 -1/mp^2)));
wn=wr/sqrt(1 -2*zeta^2);
ts=4/zeta/wn
po=100*exp(-zeta*pi/sqrt(1 -zeta^2))

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
