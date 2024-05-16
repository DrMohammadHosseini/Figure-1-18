% Bode plot script for Figure 8.42
%
num=5*[0.1 1];
f1=[1 0]; f2=[0.5 1]; f3=[1/2500 .6/50 1];
den=conv(f1,conv(f2,f3));
sys=tf(num,den);
figure(1)

bode(sys,'black')

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
grid on


figure(2)
bode(sys)
xlabel('Frequency','FontSize',14,'FontWeight','bold','FontName','times');
ylabel('Frequency','FontSize',14,'FontWeight','bold','FontName','times');
set(gca,'FontName','times','FontSize',14)
%lineHandle = findobj(gcf,'Type','line','-and','Color','p');
linehandle = findobj(gcf, 'Type','Axes');
set(gcf,'color','r');

%h=get(gca,'YLabel')
%set(h,'FontSize', 16)




%h = gcr
%setoptions(h,'FreqUnits','Hz')

%bodeplot(sys,'black','LineWidth',3)



figure(3)
x = 0:0.01:20;
y1 = 200*exp(-0.05*x).*sin(x);
y2 = 0.8*exp(-0.5*x).*sin(10*x);
[AX,H1,H2] = plotyy(x,y1,x,y2,'plot');
set(AX,{'ycolor'},{'r';'b'})