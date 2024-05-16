%Compute impulse response for a second-order system
%
t=[0:0.1:10];num=[1];
zeta1=0.1; den1=[1 2*zeta1 1];
zeta2=0.25; den2=[1 2*zeta2 1];
zeta3=0.5; den3=[1 2*zeta3 1];
zeta4=1; den4=[1 2*zeta4 1];

%
[y1,x,t]=impulse(num,den1,t);
[y2,x,t]=impulse(num,den2,t);
[y3,x,t]=impulse(num,den3,t);
[y4,x,t]=impulse(num,den4,t);
%
plot(t,y1,t,y2,'*',t,y3,'.-',t,y4,'LineWidth',3) 
X=xlabel(' \omega_n t');
Y=ylabel('c(t)')
T=title('Impuls Response')
L=legend('\zeta = 0.1','\zeta = 0.25','\zeta =0.5','\zeta =1')
grid

set(gca,'FontName','times','FontSize',18)
set([X,Y,T,L],'FontName','times','FontSize',18,'FontAngle','Italic')