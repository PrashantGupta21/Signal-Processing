function y = poly_quant(x,B,a,n)
% initialising
y = zeros(size(x));
l = 1 + 2^(B-1);
w = 1/(l-1);
r = zeros(l,1);
ar = zeros(size(r));
% calculating parameters
for k = 1:length(r)
    r(k) = (k-1)*(w);
end
for k = 1:length(ar)
    ar(k) = a*(r(k)^n);
end
% quantized mapping
for k = 1:length(y)
    if x(k) < 0 && abs(x(k)) <= ar(length(ar))
        for n = 1:length(ar)
            if abs(x(k)) > ar(n) && abs(x(k)) <= ar(n+1)
                y(k) = -(ar(n) + ar(n+1))/2;
                break
            end
        end
    elseif x(k) < 0 && abs(x(k)) > ar(length(ar))
        y(k) = -(ar(length(ar)) + ar(length(ar)-1))/2;
    elseif x(k) >= ar(length(ar))
        y(k) = (ar(length(ar)) + ar(length(ar)-1))/2;
    else
        for n = 1:length(ar)
            if x(k) >= ar(n) && x(k) < ar(n+1)
                y(k) = (ar(n) + ar(n+1))/2;
                break
            end
        end
    end
end
end


