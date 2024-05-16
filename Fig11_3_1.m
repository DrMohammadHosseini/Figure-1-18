Ks=118;
a=16;
b=70;
K=5;

K3=Ks-2;
K1=a*(2+K3)-1;
K2=b*(2+K3)
numgc=K*[K3 K1 K2];
dengc=[1 0];
numg=[1];
deng=[1 2 1];
nums=conv(dengc,numg);
dens=conv(dengc,deng);
[num,den]=cloop(nums,dens)
hold on
step(num,den)
%axis([0 1 0 1.1])


