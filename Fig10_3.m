num=10*[1 1];
den=[1 10];
sys=tf(num,den)
bode(sys)
grid