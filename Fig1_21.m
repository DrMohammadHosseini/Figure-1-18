clc
close all
% This is a script to plot the function y=sin(alpha*t).
% The value of alpha must exist in the workspace prior to invoking the
%script
alpha=50;
t=[0:0.005:1]';
y=sin(alpha*t);
plot(t,y,'black','LineWidth',3)
xlabel('Time [sec]','FontWeight','bold','FontName','times','FontSize',18)
ylabel('y(t)=sin("\alpha *t)','FontWeight','bold','FontName','times','FontSize',18)

% set([X,Y,L],'FontName','times','FontSize',18)
set(findall(gcf,'type','axes'),'FontSize',18,'FontName','Times','FontWeight','bold');
grid