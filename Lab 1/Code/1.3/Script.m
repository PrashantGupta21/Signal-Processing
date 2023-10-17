% define relevant parameters 
T = 1;
N = 10*T;
t1 = -0.1;
t2 = 0.1;
% define relevant expressions
syms t;
xt = 1; 
% function call to find FS coefficients
F = fourierCoeff(t,xt,T,t1,t2,N);
% plotting
FS_idx = -N:N;
figure; 
stem(FS_idx,F); grid on;
xlabel('N');
ylabel('Coefficient Value');
title('fourier coefficients of square wave at T=1');
% observation - as T increases, graph gets more detailed and fine.
figure;
time_grid = -0.5:0.01:0.5;
y = partialfouriersum(F, T, time_grid);
plot(time_grid, y);
xlabel('t');
ylabel('x(t)');
title('reconstrcution of sqaure wave from sum at N=10');
% observation - as N increases, graph smoothens closer to true shape.
