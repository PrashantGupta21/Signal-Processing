%Hz = b0*(1-(exp(1i*w0))*(z^-1))*(1-(exp(-1i*w0))*(z^-1));
w0 = pi/4;
b0 = -(exp(1i*w0))/((1-(exp(1i*w0)))^2); 
b1 = [1 -(exp(1i*w0))];
b2 = [1 -(exp(-1i*w0))];
b = b0*conv(b1,b2);
a = 1;
[H,w] = freqz(b,a,2001);
plot(w,H);
title("FIR filter");
xlabel("w");
ylabel("H");
fvtool(b,a);
title("FIR filter");
% This FIR filter is stable and causal.

%Gz = (c0*(1-(exp(1i*w0))*(z^-1))*(1-(exp(-1i*w0))*(z^-1)))/((1-r0*(exp(1i*w0))*(z^-1))*(1-r0*(exp(-1i*w0))*(z^-1)));
r0 = 0.9;
c0 = ((exp(1i*w0)-r0)*(1-r0*exp(1i*w0)))/((1-(exp(1i*w0)))^2);
a1 = [1 -r0*(exp(1i*w0))];
a2 = [1 -r0*(exp(-1i*w0))];
c = c0*conv(b1,b2);
d = conv(a1,a2);
[G,k] = freqz(c,d,2001);
figure;
plot(k,G);
title("IIR filter");
xlabel("w");
ylabel("H");
fvtool(c,d);
title("IIR filter");
% This IIR filter is stable and causal.
% The filter peak becomes steeper as r->1.

load('handel.mat');
f0 = 1024;
t = 0:1/Fs:(length(y)-1)/Fs;
x = y' + sin(2*pi*f0*t);
y1 = filter(b,a,x);
y2 = real(filter(c,d,x));

subplot(2,2,1);
plot(t,y);
title("original signal");
xlabel("t");
ylabel("y");
ylim([-2 2]);
subplot(2,2,2);
plot(t,x);
title("noisy input signal");
xlabel("t");
ylabel("x");
ylim([-2 2]);
subplot(2,2,3);
plot(t,Y1);
title("FIR filtered signal");
xlabel("t");
ylabel("y1");
ylim([-2 2]);
subplot(2,2,4);
plot(t,Y2);
title("IIR filtered signal");
xlabel("t");
ylabel("y2");
ylim([-2 2]);