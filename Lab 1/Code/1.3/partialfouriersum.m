function y = partialfouriersum(A, T, time_grid)

% function to find partial fourier sum

% initialize
N = (length(A)-1)/2;
w0 = 2*pi/T;
y = zeros(size(time_grid));

% for-loop to find sum
for k = -N:N
 y = y + (A(k+N+1)*exp(1i*k*w0*time_grid));

end


