clear;clc;

K=[5 10 20 40];
t=-2:0.001:2;

for i=1:length(K)
    for j=1:length(t)
        clear x;
        for k=0:K(i)
            x(k+1)=(4/pi)*( (1/(2*k+1))*sin( (2*k+1)*pi*t(j)) );
        end
        X(i,j)=sum(x);
    end
end

figure;
plot(t,X(1,:));
xlabel('t');ylabel('x(t)');
title('1-(1) K=5');

figure
plot(t,X(2,:));
xlabel('t');ylabel('x(t)');
title('1-(2) K=10')

figure
plot(t,X(3,:));
xlabel('t');ylabel('x(t)');
title('1-(3) K=20')

figure
plot(t,X(4,:));
xlabel('t');ylabel('x(t)');
title('1-(4) K=40')