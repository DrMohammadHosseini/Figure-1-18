t=[0:0.05:10];
K=[20,10,4.44];
y=zeros(length(t), length(K));

for i=1:3
    numgc=K(i)*[1 2];
    dengc=[1 1];
    sysgc=tf(numgc,dengc);
    numg=[1];
    deng=[1 2 4];
    sysg=tf(numg,deng);
    syss=series(sysgc,sysg);
    sys=feedback(syss,[1]);
    y(:,i)=step(sys,t);
end

plot(t,y(:,1),t,y(:,2),'O',t,y(:,3),'--','LineWidth',3)
grid
X=xlabel('Time (s)')
Y=ylabel('C(t)')
L=legend(['K=',num2str(K(1))],['K=',num2str(K(2))],['K=',num2str(K(3))]);

%gtext(['k=',num2str(K(1))],'FontName','times','FontSize',12)
%gtext(['k=',num2str(K(2))],'FontName','times','FontSize',12)
%gtext(['k=',num2str(K(3))],'FontName','times','FontSize',12)

%T=title('Nichols Chart')
X=xlabel('Time (s)');
Y=ylabel('C(t)');
set([X,Y,L],'FontName','times','FontSize',16,'FontAngle','Italic','FontWeight','bold')

set(findall(gcf,'type','axes'),'fontsize',16,'Fontname','Times','fontWeight','bold');