function B = myHPF(A,w0_FS,wc)
N = (length(A)-1)/2;            %computing the length of A
B = zeros(2*N+1,1);

for k = -N:N
   if (abs(k)*w0_FS) > wc       %condition to check the filtering condition
       B(k+N+1) = A(k+N+1);     %storing the coefficient if the above condition is satisfied
   end
end
end
