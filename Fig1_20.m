clc
close all
x=[0:0.1:1]';
y1=x.*sin(x);
y2=sin(x);
subplot(2,2,1),plot(x,y1,'--',x,y2,'-.','LineWidth',3);
X=xlabel('x','FontWeight','bold')
Y=ylabel('y1, y2','FontWeight','bold')
L=legend('y1=sin(x) ---','y2=sin(x) .-.')
set([X,Y,L],'FontName','times','FontSize',18)
subplot(2,2,2),plot(x,y1,'-.',x,y2,'--','LineWidth',3)
X=xlabel('x','FontWeight','bold')
Y=ylabel('y1, y2','FontWeight','bold')
L=legend('y1=sin(x) ---','y2=sin(x) .-.')
set([X,Y,L],'FontName','times','FontSize',18)
subplot(2,2,3),plot(x,y1,'-*',x,y2,'-.','LineWidth',3)
X=xlabel('x','FontWeight','bold')
Y=ylabel('y1, y2','FontWeight','bold')
L=legend('y1=sin(x) ---','y2=sin(x) .-.')
set([X,Y,L],'FontName','times','FontSize',18)
subplot(2,2,4),plot(x,y1,'--',x,y2,'-*','LineWidth',3)
X=xlabel('x','FontWeight','bold')
Y=ylabel('y1, y2','FontWeight','bold')
L=legend('y1=sin(x) ---','y2=sin(x) .-.')
set([X,Y,L],'FontName','times','FontSize',18)
set(findall(gcf,'type','axes'),'FontSize',20,'FontName','Times','FontWeight','bold');
grid