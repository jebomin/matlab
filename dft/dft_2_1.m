t = 0:1:256;
x= 1.*((t>=0)-(t>8))+0.*((t>=8)-(t>128));

xfft = fft(x);

x1 = abs(xfft);
x2 = real(xfft);
x3 = imag(xfft);


figure;
subplot(1,3,1);
stem(t,x2,'MarkerSize',1)
title("Real");
subplot(1,3,2);
stem(t,x3,'MarkerSize',1)
title("Imaginary");
subplot(1,3,3);
stem(t,x1,'MarkerSize',1)
title("Magnitude");