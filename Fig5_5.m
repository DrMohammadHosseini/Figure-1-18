% This script computes the roots of the characteristic
% equation q(s) = s^3 + 2 s^2 + 4 s + K for 0<K<20
%
K=[0:0.5:20];
for i=1:length(K);
q=[1 2 4 K(i)];
p(:,i)=roots(q);
end
plot(real(p),imag(p),'x','LineWidth',3)
grid

X=xlabel('Real axis')
Y=ylabel('lmaginary axis')
T=title('Roots of the characteristic equation q(s) = s^3 + 2 s^2 + 4 s + K for 0<K<20')

set(gca,'FontName','times','FontSize',18)
set([X,Y,T],'FontName','times','FontSize',18,'FontAngle','Italic')