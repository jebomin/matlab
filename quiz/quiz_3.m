close all;
clear all;

t = 0:0.025:4;
m = cos(pi.*t/2);

figure;
stem(t,m);
xlabel('t'); ylabel('m');
title('3-1');

u = [0.01 50 500];

for i = 1:length(u)
    v(i,:) = log(1+u(i).*abs(m))./log(1+u(i));
end


figure;
stem(t,v(1,:),'Color', [1 0 0]);
hold on;
stem(t,v(2,:),'Color', [0 1 0]);
hold on;
stem(t,v(3,:),'Color', [0 0 1]);
hold off;
legend('\mu = 0.01', '\mu = 50', '\mu = 500');
xlabel('t'); ylabel('v');
title('3-2');


for i = 1:length(u)
    vq(i,:) =floor(12*v(i,:));
end


figure;
stem(t,vq(1,:),'Color', [1 0 0]);
hold on;
stem(t,vq(2,:),'Color', [0 1 0]);
hold on;
stem(t,vq(3,:),'Color', [0 0 1]);
hold off;
legend('\mu = 0.01', '\mu = 50', '\mu = 500');
xlabel('t'); ylabel('v_q');
title('3-3');