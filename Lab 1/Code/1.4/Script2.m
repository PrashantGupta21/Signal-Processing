syms t;
x2t = t;        %initialising and declaring of variables and parameters
T = 1;
N = 100;
t1 = -1/4;
t2 = 1/4;

F = fourierCoeff(t,x2t,T,t1,t2,N);  % making F store the fourier coefficients
FS_idx = -N:N;                      
figure;                             % Plotting the values of coefficient against values from -N to N
stem(FS_idx,imag(F));
title('Plot of coefficients for 1.4(b)');
xlabel('k')
ylabel('value of coefficient (ak)')
hold on;
stem(FS_idx,real(F)); 
grid on;
% Here the function is Odd due to symmetry about origin
% In the graph the red points denote Real Parts
% and the red points denote Imaginary Parts