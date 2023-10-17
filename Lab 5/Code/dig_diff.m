function z = dig_diff(x,n)
% impulse response h = [1 -1 0 0 0 0 0 0...(till n terms)]
h = zeros(size(n));
h(1) = 1;
h(2) = -1;
% convolution (high pass)
z = conv(x,h);
z = z(1:length(n));
end


