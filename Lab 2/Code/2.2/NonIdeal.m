function B = NonIdeal(A,w0_FS,G,a)
N = (length(A)-1)/2;    %computing the length of A
B = zeros(2*N+1,1); 

for k = -N:N
    B(k+N+1) = A(k+N+1)*(G/(a+(1i*k*w0_FS)));       %multilying the fourier with the Impulse Response of the System
end

end

