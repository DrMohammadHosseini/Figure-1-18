clear all
clc
numg=[6 0 1];
deng=[1 3 3 1];
z=roots(numg)
p=roots(deng)

n1=[1 1];
n2=[1 2];
d1=[1 2*i];
d2=[1 -2*i];
d3=[1 3];
numh=conv(n1,n2);
denh=conv(d1,conv(d2,d3));
printsys(numh,denh)

num=conv(numg,denh);
den=conv(deng,numh);
printsys(num,den)

pzmap(num,den)
title('Pole-Zero Map')
