%initialise
n = 0:1000;
M = [5 21 51];
N0 = 1;
w = -10:0.01:10;
w0 = pi/200;
s = 5*sin(w0*n);
v = randn(1,length(n));

figure; %filter

subplot(2,2,1)
x = s+v;
plot(n,s,"-r");
hold on;
plot(n,x,"-b");
hold off;
title("noisy signal");
xlabel("n");
ylabel("x");

subplot(2,2,2)
y1 = mov_avg_filt(x,n,M(1));
plot(n,s,"-r");
hold on;
plot(n,y1,"-b");
hold off;
ylim([-10 10]);
title("filtered signal M=5");
xlabel("n");
ylabel("y");

subplot(2,2,3)
y2 = mov_avg_filt(x,n,M(2));
plot(n,s,"-r");
hold on;
plot(n,y2,"-b");
hold off;
ylim([-10 10]);
title("filtered signal M=21");
xlabel("n");
ylabel("y");

subplot(2,2,4)
y3 = mov_avg_filt(x,n,M(3));
plot(n,s,"-r");
hold on;
plot(n,y3,"-b");
hold off;
ylim([-10 10]);
title("filtered signal M=51");
xlabel("n");
ylabel("y");

figure; % filtered DTFT

subplot(2,2,1)
X = real(DT_Fourier(x,N0,w));
plot(w,X);
title("noisy signal DTFT");
xlabel("w");
ylabel("X");

subplot(2,2,2)
Y1 = real(DT_Fourier(y1,N0,w));
plot(w,Y1);
title("filtered signal M=5 DTFT");
xlabel("w");
ylabel("Y");

subplot(2,2,3)
Y2 = real(DT_Fourier(y2,N0,w));
plot(w,Y2);
title("filtered signal M=21 DTFT");
xlabel("w");
ylabel("Y");

subplot(2,2,4)
Y3 = real(DT_Fourier(y3,N0,w));
plot(w,Y3);
title("filtered signal M=51 DTFT");
xlabel("w");
ylabel("Y");

figure; %diffrentiator

subplot(2,1,1)
x = s+v;
plot(n,v,"-r");
hold on;
plot(n,x,"-b");
hold off;
title("noisy signal");
xlabel("n");
ylabel("x");

subplot(2,1,2)
z = dig_diff(x,n);
plot(n,v,"-r");
hold on;
plot(n,z,"-b");
hold off;
ylim([-10 10]);
title("diffentiated noise");
xlabel("n");
ylabel("z");

figure; % differentiated FT

subplot(2,1,1)
plot(w,X);
title("noisy signal DTFT");
xlabel("w");
ylabel("X");

subplot(2,1,2)
Z = real(DT_Fourier(z,N0,w));
plot(w,Z);
ylim([-2000 2000]);
title("diffentiated noise DTFT");
xlabel("w");
ylabel("Z");