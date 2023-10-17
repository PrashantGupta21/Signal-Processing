% define relevant parameters 
T = 2;
%T = 1;
%T = 4;
%T = pi;
w = -5:0.1:5;
a = -T;
b = T;

% define relevant expressions
syms t;
xt = 1; % rectangular pulse
%xt = exp(1i*t);
%xt = cos(t);
%xt = 1-abs(t);
%xt = sin(t); % optional

% function call to find FT
X = continuousFT(t,xt,a,b,w);

% plotting
figure; 

subplot(2,2,1);
plot(w, real(X),'-r');
title('real(X) vs w');
xlabel('w')
ylabel('real(X)')
grid on;

subplot(2,2,2);
plot(w, imag(X),'-r');
title('imag(X) vs w');
xlabel('w')
ylabel('imag(X)')
grid on;

subplot(2,2,3);
plot(w, abs(X),'-r');
title('abs(X) vs w');
xlabel('w')
ylabel('abs(X)')
grid on;

subplot(2,2,4);
plot(w, angle(X),'-r');
title('phase(X) vs w');
xlabel('w')
ylabel('phase(X)')
grid on;