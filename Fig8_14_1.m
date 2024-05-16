w=logspace(0,1,200);
K=20;
for i=1:3
numgc=K*[1 2];
dengc=[1 1];

numg=[1];
deng=[1 2 4];
[nums,dens]=series(numgc,dengc,numg,deng);
[num,den]=cloop(nums,dens)

[mag, phase, w]=bode(tf(num,den),w);
if i==1,mag1=mag;phase1=phase;K=10;end
if i==2,mag2=mag;phase2=phase;K=4.44;end
if i==3,mag3=mag;phase3=phase;end
end
%
loglog(w(:,1),mag1(1,1,:))
xlabel('Frequency (rad/s)'), ylabel('Magnitude'), grid on

%legend(['K= ',num2str(K(1,1)),', K= ',num2str(K(1,2)),', K= ',num2str(K(1,3))])


gtext(['k=',num2str(K(1))],'FontName','times','FontSize',12)
gtext(['k=',num2str(K(2))],'FontName','times','FontSize',12)
gtext(['k=',num2str(K(3))],'FontName','times','FontSize',12)

%T=title('Nichols Chart')
X=xlabel('Frequency');
Y=ylabel('Magnitude');
set([X,Y],'FontName','times','FontSize',16,'FontAngle','Italic','Color','black','FontWeight','bold')

set(findall(gcf,'type','axes'),'fontsize',16,'Fontname','Times','fontWeight','bold');