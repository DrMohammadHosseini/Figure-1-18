num=0.1*[1 10];
den=[1 1];
sys=tf(num,den)
bode(sys)
grid