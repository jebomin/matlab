clc;clear;
x = 0:0.01:1;

y1 = log(0.0000001*abs(x)+1)/log(1+0.0000001);
y2 = log(5*abs(x)+1)/log(1+5);
y3 = log(100*abs(x)+1)/log(1+100);
subplot(311);
plot(x,y1);
legend('mu=0.0000001');
subplot(312);
plot(x,y2);
legend('mu=5');
subplot(313);
plot(x,y3);
legend('mu=100');
