clear all
close all
clc

w=linspace(0,10*pi,100);
num=5*[0.1 1];
den=[1 2 -1];
sys=tf(num,den)
%[mag,phase,w]=bode(num,den)
figure(1)

[mag,phase,w]=bode(sys,w)

figure(2)
bode(sys,w)
grid on
axes=findobj('type','axes')
h_magnitude=get(axes(2),'YLabel')
h_phase=get(axes(1),'YLabel')
set(h_magnitude,'String','Magnitude (dB)')
set(h_phase,'String','Phase (deg)')
set([axes(1),axes(2)],'FontName','times','FontSize',14,'FontAngle','Italic','FontWeight','bold')
set([h_magnitude,h_phase],'FontName','times','FontSize',14,'FontAngle','Italic','FontWeight','bold')

T=title ('Bode Diagram')
X=xlabel('Frequency');
%set('LineWidth',3)
set(axes,'ycolor','black')
set(axes,'xcolor','black')
%set(gca,'FontName','times','FontSize',14)
set([X,T],'FontName','times','FontSize',14,'FontAngle','Italic','Color','black','FontWeight','bold')