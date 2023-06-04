close all;
clear all;


t = 0:0.125:4;
m = cos(pi.*t/2);

figure;
stem(t,m);
xlabel('t'); ylabel('m');
title('2-1');

u = [0.0000001 5 100];

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
legend('\mu = 0.0000001', '\mu = 5', '\mu = 100');
xlabel('t'); ylabel('v');
title('2-2');
for i = 1:length(u)
    vq(i,:) =floor(16*v(i,:));
end


figure;
stem(t,vq(1,:),'Color', [1 0 0]);
hold on;
stem(t,vq(2,:),'Color', [0 1 0]);
hold on;
stem(t,vq(3,:),'Color', [0 0 1]);
hold off;
legend('\mu = 0.0000001', '\mu = 5', '\mu = 100');
xlabel('t'); ylabel('v_q');
title('2-3')

clear all;



t = 0:0.25:4;
m = cos(pi.*t/2);

figure;
stem(t,m);
xlabel('t'); ylabel('m');
title('2-4');

u = [0.0000001 5 100];

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
legend('\mu = 0.0000001', '\mu = 5', '\mu = 100');
xlabel('t'); ylabel('v');
title('2-5');


for i = 1:length(u)
    vq(i,:) =floor(16*v(i,:));
end


figure;
stem(t,vq(1,:),'Color', [1 0 0]);
hold on;
stem(t,vq(2,:),'Color', [0 1 0]);
hold on;
stem(t,vq(3,:),'Color', [0 0 1]);
hold off;
legend('\mu = 0.0000001', '\mu = 5', '\mu = 100');
xlabel('t'); ylabel('v_q');
title('2-6');