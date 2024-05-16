clc
clear all
numg=[1 4 6 6 5 2];
deng=[12 205 1066 2517 3128 2196 712];
[num,den]=minreal(numg,deng);
printsys(num,den);
