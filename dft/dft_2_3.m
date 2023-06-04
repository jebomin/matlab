t=0:1:128;
x=1.*((t>=0)-(t>8))+0.*((t>=8)-(t>128));

y=fft(x+8);
m=ifft(y);
p=ifft(m);

figure;
subplot(1,3,1);
stem(t,real(p),'MarkerSize',1);
title("P(K) real");
subplot(1,3,2);
stem(t,imag(p),'MarkerSize',1);
title("P(K) imaginary");
subplot(1,3,3);
stem(t,abs(p),'MarkerSize',1);
title("P(K) Magnitude");
