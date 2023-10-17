function y = partialfouriersum(A,T,time_grid)

N = (length(A)-1)/2;            %finding the value of N
y = zeros(size(time_grid));     %initialising the vector y with zeros

for k = -N:N                    % running a for loop to compute the values of y and store them in y
   y = y + (A(k+N+1)*exp((1i*k*(2*pi)*time_grid)/T));
end                         % end of for loop

end                         % end of function