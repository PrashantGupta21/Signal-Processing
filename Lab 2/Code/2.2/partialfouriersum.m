function y = partialfouriersum(A,T,time_grid)

N = (length(A)-1)/2;        %finding length og A
y = zeros(size(time_grid)); % initialising y to zeros

for k = -N:N                        % start of for loop
   y = y + (A(k+N+1)*exp((1i*k*(2*pi)*time_grid)/T)); %statement to compute the function from coefficient
end

