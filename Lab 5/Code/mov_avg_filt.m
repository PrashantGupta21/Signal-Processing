function y = mov_avg_filt(x,n,M)
% impulse response h = [1/m 1/m..(till M terms)..0 0 0 0...(till n terms)]
h = zeros(size(n));
for k = 1:M
    h(k) = 1/M;
end
% convolution (low pass)
y = conv(x,h);
y = y(1:length(n));
% Increasing M improves accuracy of filter, but adds a phase lag.
end

