function F = fourierCoeff(t,xt,T,t1,t2,N)

% function to find FS coefficients

% initialize
w0 = 2*pi / T;
F = zeros(2*N+1,1);

% for-loop to find coefficents
for num = 1:2*N+1
 F(num) = (1/T)*int(xt*exp(1i*w0*(num-(N+1))*t),t,[t1 t2]);
end

end

