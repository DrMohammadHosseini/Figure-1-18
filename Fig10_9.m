K=1800;
numg=[1];
deng=[1 15 50 0];
numgc=K*[1 3.5];
dengc=[1 25];
sysg=tf(numg,deng);
sysgc=tf(numgc,dengc);
sys=series(sysgc,sysg);
margin(sys)
grid on
set(findall(gcf,'type','axes'),'fontsize',16,'Fontname','Times','fontWeight','bold');