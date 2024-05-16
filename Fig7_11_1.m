K=2;
num=[K];
den=[1 3 2 K];
sys=tf(num,den);
t=[0:0.01:20];
y=step(sys,t);
lu=1.02*ones(length(t),1)
ll=0.98*ones(length(t),1)

l=1.38*ones(length(t),1)

plot(t,y,'black','LineWidth',3);
hold on
plot(t,l,t,lu,t,ll);

grid
X=xlabel('Time (s)')
Y=ylabel('C(t)')
