function  X = DT_Fourier(x,N0,w)

n = (-N0+1):length(x)-N0; % making n in the range to calculate from -n to n
X = zeros(length(w),1);   % initialising the vector which stores the values for various w
for k = 1:length(X)       % running a for loop
    A = x.*(exp(-1i*w(k).*n));  % A vector which stores the values at different n for same value of w
    X(k) = sum(A);              % summing the values of from -n to n to find the X(jw) for particular w
end
end