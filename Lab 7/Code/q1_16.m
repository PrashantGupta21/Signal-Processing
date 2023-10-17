% part-e
% Increasing the vaule of m, adds more resolution to the plots.
figure; 
f0 = 12;
fs = 64;
L = 16;
n = (0:L-1)*1/fs; 
xn = cos(2*pi*f0*n);
m = [1 2 4 8];
N = m*L;

subplot(2,2,1)
Xk1 = fft(xn,N(1));
k1 = linspace(0,2*pi*fs,N(1));
stem(k1,Xk1);
title("m = 1");
xlabel("k(in rad/sec)");
ylabel("X[k]");

subplot(2,2,2)
Xk2 = fft(xn,N(2));
k2 = linspace(0,2*pi*fs,N(2));
stem(k2,Xk2);
title("m = 2");
xlabel("k(in rad/sec)");
ylabel("X[k]");

subplot(2,2,3)
Xk3 = fft(xn,N(3));
k3 = linspace(0,2*pi*fs,N(3));
plot(k3,Xk3);
title("m = 4");
xlabel("k(in rad/sec)");
ylabel("X[k]");

subplot(2,2,4)
Xk4 = fft(xn,N(4));
k4 = linspace(0,2*pi*fs,N(4));
plot(k4,Xk4);
title("m = 8");
xlabel("k(in rad/sec)");
ylabel("X[k]");

% part-f
% Increasing the vaule of L, does not affect the graph significantly.
figure; 
L = [16 32 64 128];
m = 8;
N = m*L;

subplot(2,2,1)
Xk1 = fft(xn,N(1));
k1 = linspace(0,2*pi*fs,N(1));
plot(k1,Xk1);
title("L = 16");
xlabel("k(in rad/sec)");
ylabel("X[k]");

subplot(2,2,2)
Xk2 = fft(xn,N(2));
k2 = linspace(0,2*pi*fs,N(2));
plot(k2,Xk2);
title("L = 32");
xlabel("k(in rad/sec)");
ylabel("X[k]");

subplot(2,2,3)
Xk3 = fft(xn,N(3));
k3 = linspace(0,2*pi*fs,N(3));
plot(k3,Xk3);
title("L = 64");
xlabel("k(in rad/sec)");
ylabel("X[k]");

subplot(2,2,4)
Xk4 = fft(xn,N(4));
k4 = linspace(0,2*pi*fs,N(4));
plot(k4,Xk4);
title("L = 128");
xlabel("k(in rad/sec)");
ylabel("X[k]");

% part-g
% The graph of f0=11 is similar for higher values of m, but has more
% spread out frequency for lower values of m.
figure; 
f0 = 11;
xn = cos(2*pi*f0*n);
L = 16;
m = [1 2 4 8];
N = m*L;

subplot(2,2,1)
Xk1 = fft(xn,N(1));
k1 = linspace(0,2*pi*fs,N(1));
stem(k1,Xk1);
title("m = 1");
xlabel("k(in rad/sec)");
ylabel("X[k]");

subplot(2,2,2)
Xk2 = fft(xn,N(2));
k2 = linspace(0,2*pi*fs,N(2));
stem(k2,Xk2);
title("m = 2");
xlabel("k(in rad/sec)");
ylabel("X[k]");

subplot(2,2,3)
Xk3 = fft(xn,N(3));
k3 = linspace(0,2*pi*fs,N(3));
plot(k3,Xk3);
title("m = 4");
xlabel("k(in rad/sec)");
ylabel("X[k]");

subplot(2,2,4)
Xk4 = fft(xn,N(4));
k4 = linspace(0,2*pi*fs,N(4));
plot(k4,Xk4);
title("m = 8");
xlabel("k(in rad/sec)");
ylabel("X[k]");

% part-h
% the wann function removes the the spread out frequencies preserving the
% original peak frequencies. Therefore its a better method compared to
% multipling with the rectangular wave function.
figure; 
w = hann(L);
f0 = 12;
xn = cos(2*pi*f0*n);
yn = xn.*w';

subplot(2,2,1)
Yk1 = fft(yn,N(1));
stem(k1,Yk1);
title("m = 1");
xlabel("k(in rad/sec)");
ylabel("Y[k]");

subplot(2,2,2)
Yk2 = fft(yn,N(2));
stem(k2,Yk2);
title("m = 2");
xlabel("k(in rad/sec)");
ylabel("Y[k]");

subplot(2,2,3)
Yk3 = fft(yn,N(3));
plot(k3,Yk3);
title("m = 4");
xlabel("k(in rad/sec)");
ylabel("Y[k]");

subplot(2,2,4)
Yk4 = fft(yn,N(4));
plot(k4,Yk4);
title("m = 8");
xlabel("k(in rad/sec)");
ylabel("Y[k]");

% part-i
% The graph x-axis is already scaled by fs, and the values of k at the
% peaks is equal to 2*pi*f0. So f0 = k(at peak)/2*pi. Changing the value of
% N does not have any significant affect on the peaks location. The values
% obtained by the above method is 12.09 and 11.08, which is very close to 
% the actual values of f0, which is 12 and 11 in the given function.

% part j
[x,fs] = audioread('04.wav');
N = length(x);
y = fft(x,N);
k = linspace(0,2*pi*fs,N);
figure;
stem(k,abs(y));
title("DFT of audio file 04.wav");
xlabel("k(in rad/sec)");
ylabel("Y[k]");
% The 3 highest frequencies which appear(in decreasing order of magnitude) in the plot are:
% 1) 3507.71 rad/sec(558.27 Hz)
% 2) 3511.79 rad/sec(558.99 Hz)
% 3) 3515.86 rad/sec(559.57 Hz)