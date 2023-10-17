% part-a
% define relevant parameters 
T = 1;
N = 5;
t1 = -T/2;
t2 = T/2;
% define relevant expressions
syms t;
xt = 2*cos(2*pi*t) + cos(6*pi*t); % sum of cosines wave
% function call to find FS coefficients
F = fourierCoeff(t,xt,T,t1,t2,N);
% plotting
FS_idx = -N:N;
figure; stem(FS_idx,F);
title('Plot of fourier coefficients for 1.1(a)');
xlabel('k')
ylabel('value of coefficient (ak)')
grid on;


%{
% part-b
% define relevant parameters 
T = 1;
N = 10;
t1 = -T/4;
t2 = T/4;
% define relevant expressions
syms t;
xt = 1; 

% function call to find FS coefficients
F = fourierCoeff(t,xt,T,t1,t2,N);
% plotting
FS_idx = -N:N;
figure; stem(FS_idx,F);
title('Plot of fourier coefficients for 1.1(b)');
xlabel('k')
ylabel('value of coefficient (ak)')
grid on;
%}

