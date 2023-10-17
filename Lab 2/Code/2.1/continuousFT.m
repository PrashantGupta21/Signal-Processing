function X = continuousFT(t,xt,a,b,w)

% function to find FT 

% initialize
X = zeros(size(w));

% for-loop to find weight
for k = 1:length(w)
 X(k) = int(xt*exp(-1i*w(k)*t),t,[a b]);
end

end
