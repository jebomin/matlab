t = 0:1:64;
x= 1.*((t>=0)-(t>16))+0.*((t>=16)-(t>64));

xfft = fft(x);

x1 = abs(xfft);
x2 = real(xfft);
x3 = imag(xfft);


figure;
subplot(1,3,1);
stem(t,x2,'MarkerSize',1)
title("a=16, N=64");
subplot(1,3,2);
stem(t,x3,'MarkerSize',1)
title("a=16, N=64");
subplot(1,3,3);
stem(t,x1,'MarkerSize',1)
title("a=16, N=64");