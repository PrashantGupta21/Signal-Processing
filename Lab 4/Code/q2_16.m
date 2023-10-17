%% Question 2
figure; % a,b,c
f = 10;
Fs = 5000;
t = 0:1/Fs:1;
x = sin(2*pi*f*t);
B = 4;
a = 1;
y = quadratic_quant(x,B,a);
z = x-y;
subplot(3,1,1);
plot(t,x);
title('sampled signal');
xlabel('t');
ylabel('x');
subplot(3,1,2);
plot(t,y);
title('quantized signal');
xlabel('t');
ylabel('y');
subplot(3,1,3);
plot(t,z);
title('quantization error');
xlabel('t');
ylabel('z');

figure; % d
bins = 15;
h = histogram(z,bins);
title('error stats');
xlabel('magnitude');
ylabel('frequency');

figure; %e
b = 1:8;
mae = zeros(size(b));
for k = 1:length(b)
    Y = quadratic_quant(x,b(k),a);
    mae(k) = max(abs(x-Y));
end
plot(b,mae);
title('variation of max abs error with bits');
xlabel('b');
ylabel('mae');

figure; %f
sqnr = zeros(size(b));
X = sumsqr(x);
for k = 1:length(b)
    e = x - quadratic_quant(x,b(k),a);
    E = sumsqr(e);
    sqnr(k) = X/E;
end
plot(b,sqnr);
title('variation of signal/noise power with bits');
xlabel('b');
ylabel('sqnr');

figure; %g
Z = poly_quant(x,B,a,1);
subplot(3,1,1);
plot(t,x);
title('sampled signal');
xlabel('t');
ylabel('x');
subplot(3,1,2);
plot(t,y);
title('quadratic quant');
xlabel('t');
ylabel('y');
subplot(3,1,3);
plot(t,Z);
title('linear quant');
xlabel('t');
ylabel('z');
%{ 
The accuracy of non-uniform quantizer is lower at the peaks for the given
signal x, compared to unifrom quantizer for the given set of B and a.
%}


