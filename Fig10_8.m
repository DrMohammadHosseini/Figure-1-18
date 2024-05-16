K=500;
numg=[1];
deng=[1 15 50 0];
sysg=tf(numg,deng);
sys=K*sysg;

[Gm,Pm,Wcg,Wcp]=margin(sys);


Phi=(60-Pm)*pi/180;
alpha=(1+sin(Phi))/(1-sin(Phi));
[mag,phase,w]=bode(sys);
mag_save(1,:)=mag(:,1,:);

M=-10*log10(alpha)*ones(length(w),1);

semilogx(w,20*log10(mag_save),w,M)
grid on
X=xlabel('Frequency (rad/s)')
Y=ylabel('Magnitude (dB)')
%set([X,Y],'FontName','times','FontSize',18,'FontAngle','Italic','FontWeight','bold')
%set(findall(gcf,'type','axes'),'fontsize',20,'Fontname','Times','fontWeight','bold');