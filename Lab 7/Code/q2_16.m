n = 0:10;
x1 = randn(1,length(n));
x2 = eq(n,3);

y1 = conv(x1,x2); % linear conv func

y2 = cconv(x1,x2); % circular cconv func

N=length(x1)+length(x2)-1;
X1l=fft(x1,N);
X2l=fft(x2,N);
Xl=X1l.*X2l;
yl=ifft(Xl,N); % linear conv DFT

if(length(x1)>length(x2))
    x2=[x2,zeros(1,length(x1)-length(x2))];
else
    x1=[x1,zeros(1,length(x2)-length(x1))];
end
X1c=fft(x1,N);
X2c=fft(x2,N);
Xc=X1c.*X2c;
yc=ifft(Xc,N); % circulat conv DFT

subplot(2,2,1)
stem(y1);
title('linear conv func');
xlabel('N');
ylabel('Y[N]');

subplot(2,2,2)
stem(y2);
title('circular cconv func');
xlabel('N');
ylabel('Y[N]');

subplot(2,2,3)
stem(yl);
title('linear conv DFT');
xlabel('N');
ylabel('Y[N]');

subplot(2,2,4)
stem(yc);
title('circular conv DFT');
xlabel('N');
ylabel('Y[N]');