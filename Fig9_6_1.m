numg=[1];
deng=[2 15 1];
K1=100;
K2=50;
num1=K1*numg;
num2=K2*numg;
[numa,dena]=cloop(num1,deng);
[numb,denb]=cloop(num2,deng);
 
t=[0:0.05:2]; 
[y1,x,t]=step(numa,dena,t);
[y2,x,t]=step(numb,denb,t);


plot(t,y2,'black','LineWidth',3);
T=title('Step Response for K=100')
X=xlabel('Time (s)');
Y=ylabel('c(t)');
grid on


set([X,Y,T],'FontName','times','FontSize',18,'FontAngle','Italic','FontWeight','bold')
set(findall(gcf,'type','axes'),'fontsize',20,'Fontname','Times','fontWeight','bold');