t=0:1:256;
x=1.*((t>=0)-(t>8))+0.*((t>=8)-(t>128));

y=fft(x);
m=ifft(y);

figure;
subplot(1,3,1);
stem(t,real(m),'MarkerSize',1);
title("M(K) real");
subplot(1,3,2);
stem(t,imag(m),'MarkerSize',1);
title("M(K) imaginary");
subplot(1,3,3);
stem(t,abs(m),'MarkerSize',1);
title("M(K) Magnitude");