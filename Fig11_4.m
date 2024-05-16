c0=10;
numg=[1];
deng=[1 2*c0 c0^2];
numgc=5*[116 1887 8260];
dengc=[1 0];
sysg=tf(numg,deng);
sysgc=tf(numgc,dengc);

syso=series(sysgc,sysg);

sys=feedback(syso,[1 ]);

step(sys)
hold on
axis([0 0.3 0 1.1])
grid on

X=xlabel('Time')
Y=ylabel('Amplitude')
T=title('Step Response')

set([X,Y,T],'FontName','times','FontSize',18,'FontAngle','Italic','FontWeight','bold')
set(findall(gcf,'type','axes'),'fontsize',18,'Fontname','Times','fontWeight','bold');