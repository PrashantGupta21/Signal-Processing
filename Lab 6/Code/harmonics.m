function xn = harmonics(A,f0,P,td,fs)
% initializing
F0 = f0*ones(size(A));
% assigning
xn = SineSum(A,F0,P,td,fs);
end
