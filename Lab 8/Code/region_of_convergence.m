function [N,ROC,ROC_zero] = region_of_convergence(p)
ROC_zero = 1;
x = abs(p);
x = unique(x);
if ismember(0,x)
    ROC_zero = 0;
end
% making two conditions one for zero not being a part of the ROC and other for being a part 
if ROC_zero == 0
    N = length(x);
    ROC = zeros(N,2);
    % for loop to make possible ranges of ROC in the matrix
    for k = 1:N-1
        ROC(k,1) = x(k);
        ROC(k,2) = x(k+1);
    end
    ROC(N,1) = x(N);
    ROC(N,2) = inf;
else
    N = length(x) + 1;
    ROC = zeros(N,2);
    ROC(1,2) = x(1);
    % for loop to make possible ranges of ROC in the matrix
    for k = 2:N-1
        ROC(k,1) = x(k-1);
        ROC(k,2) = x(k);
    end
    ROC(N,1) = x(N-1);
    ROC(N,2) = inf;
end
end