zeta=[0.15:0.01:0.7];
wr_over_wn=sqrt(1 -2*zeta.^2);
Mp=(2*zeta .* sqrt(1-zeta.^2)).^(-1);
%
subplot(121)
plot(zeta,Mp,'black','LineWidth',3),grid
X=xlabel('\zeta')
Y=ylabel('M_{p\omega}') 
set([X,Y],'FontName','times','FontSize',18,'FontAngle','Italic','FontWeight','bold')

subplot(122)
plot(zeta,wr_over_wn,'black','LineWidth',3)
grid
X=xlabel('\zeta')
Y=ylabel('\omega_r/\omega_n')
set([X,Y],'FontName','times','FontSize',18,'FontAngle','Italic','FontWeight','bold')