clc 
clear all

K=[50 100 200 500];
numg=[1];
deng=[1 15 50 0];
%sysg=tf(numg,deng);
t=[0:0.1:5];
%
for i=1:4
    [nums,dens]=series(K(i),numg,deng);
    [num,den]=cloop(nums,dens);
    [y,x]=step(num,den,t);
    Ys(:,i)=y;
end
%
plot(t,Ys(:,1),t,Ys(:,2),t,Ys(:,3),t,Ys(:,4))
X=xlabel('Time (s)');
Y=ylabel('c(t)')
L=label('K=5','K=100','K=200','K=500')
set([X,Y,L],'FontName','times','FontSize',18,'FontAngle','Italic','FontWeight','bold')
set(findall(gcf,'type','axes'),'fontsize',20,'Fontname','Times','fontWeight','bold');