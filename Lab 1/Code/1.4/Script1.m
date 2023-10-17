% define relevant parameters 
T = 1;
N = 100;
t1 = -T/4;
t2 = T/4;
% define relevant expressions
syms t;
xt = abs(t); % sum of cosines wave
% function call to find FS coefficients
F = fourierCoeff(t,xt,T,t1,t2,N);
% plotting
FS_idx = -N:N;
figure; 
stem(FS_idx,imag(F));
title('Plot of coefficients for 1.4(a)');
xlabel('k')
ylabel('value of coefficient (ak)')
hold on;
stem(FS_idx,real(F)); 
grid on;
% observation - The graph is symmetrical about y axis, therefore even.





