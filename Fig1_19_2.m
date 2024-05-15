clc
close all
x=[0:0.1:1]';
y1=x.*sin(x);
y2=sin(x);
plot(x,y1,'--',x,y2,'-.','LineWidth',3);
X=xlabel('x')
Y=ylabel('y1, y2')
L=legend('y1=sin(x) ','y2=sin(x) ')
set([X,Y],'FontName','times','FontSize',18)
set([X,Y,L],'FontName','Times','FontSize',20)
grid