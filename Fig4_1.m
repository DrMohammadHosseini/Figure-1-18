% ------------- Unit-step response -------------
% ***** Enter the numerator and denominator of the transfer
% function *****
num = [25];
den = [1 4 25];
% ***** Enter the following step-response command *****
figure(1)
step(num,den,'black')
% ***** Enter grid and title of the plot *****
grid off
T=title ('Unit-Step Response')
X=xlabel('Real(S)');
Y=ylabel('lmag(S)')

set(gca,'FontName','times','FontSize',18)
set([X,Y,T],'FontName','times','FontSize',18,'FontAngle','Italic')
