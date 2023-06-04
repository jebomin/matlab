t = 0:1:256;
x= 1.*((t>=0)-(t>64))+0.*((t>=64)-(t>256));

xfft = fft(x);
yifft = ifft(xfft);

x1 = abs(xfft);
x2 = real(xfft);
x3 = imag(xfft);

y1 = abs(yifft);
y2 = real(yifft);
y3 = imag(yifft);


figure;
subplot(2,3,1);
stem(t,x2,'MarkerSize',1)
title("fft Real");
subplot(2,3,2);
stem(t,x3,'MarkerSize',1)
title("fft Imag");
subplot(2,3,3);
stem(t,x1,'MarkerSize',1)
title("fft Magnitude");

subplot(2,3,4);
stem(t,y2,'MarkerSize',1)
title("ifft Real");
subplot(2,3,5);
stem(t,y3,'MarkerSize',1)
title("ifft Imag");
subplot(2,3,6);
stem(t,y1,'MarkerSize',1)
title("ifft Magnitude");