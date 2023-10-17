function xn = SineSum(A,F,P,td,fs)
% initializing
N = length(A);
n = 0:1/fs:td;
xn = zeros(size(n));
% summation
for k = 1:N
    xn = xn + A(k)*sin((2*pi*F(k)*n)+P(k));
end
end

