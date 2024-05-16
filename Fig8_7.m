num=[0.5];
den=[1 2 1 0.5];
sys=tf(num,den);
[mag,phase,w]=bode(sys); 
[Gm,Pm,Wcg,Wcp]=margin(mag,phase,w);
nyquist(sys); 

T=title(['Gm = ',num2str(Gm),', Pm = ',num2str(Pm)])
X=xlabel('Real Axis');
Y=ylabel('Imaginary Axis');
set([X,Y,T],'FontName','times','FontSize',14,'FontAngle','Italic','Color','black','FontWeight','bold')

%grid on


%set(findall(gf,'type','axes'),'fontsize',20,'Fontname','Times','fontWeight','bold');