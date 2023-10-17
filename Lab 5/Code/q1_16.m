%figure 1
n = -5:5;   % assigning the range of n
x = zeros(1,length(n)); % function as impulse
x((length(n)+1)/2) = 1;
N0 = (length(n)+1)/2;
w = -10:0.01:10;        % assigning the range of w
Y = DT_Fourier(x,N0,w); % performing the DTFT
% Below Statements are for plotting the graph and subplots
figure(1);
subplot(2,2,1);
% plot for the magnitude of DTFT
plot(w,abs(Y));
title('Magnitude');
xlabel('w');
ylim([-2,2]);   % setting the y limit
subplot(2,2,2);
% plot for the phase angle of the DTFT
plot(w,angle(Y));
title('Phase');
xlabel('w');
ylim([-2,2]);
% plot for the real part of the DTFT
subplot(2,2,3);
plot(w,real(Y));
title('Real');
xlabel('w');
ylim([-2,2]);
subplot(2,2,4);
% plot for the real part of the DTFT
plot(w,imag(Y));
title('Imaginary');
xlabel('w');
ylim([-2,2]);

% Below figures also have the imply the same as in comments for figure 1
% only the functions have been changed


% figure 2
% shifted impulse to the left by 3 units.
n = -5:5;
x = zeros(1,length(n));
x(((length(n)+1)/2)-3) = 1;
N0 = (length(n)+1)/2;
w = -10:0.01:10;
Y = DT_Fourier(x,N0,w);
figure(2);
subplot(2,2,1);
plot(w,abs(Y));
title('Magnitude');
xlabel('w');
subplot(2,2,2);
plot(w,angle(Y));
title('Phase');
xlabel('w');
subplot(2,2,3);
plot(w,real(Y));
title('Real');
xlabel('w');
subplot(2,2,4);
plot(w,imag(Y));title('Imaginary');
xlabel('w');



% figure 3
% rectangular pulse from -3 to 3
n = -3:3;
x = ones(1,length(n));
N0 = (length(n)+1)/2;
w = -10:0.01:10;
Y = DT_Fourier(x,N0,w);
figure(3);
subplot(2,2,1);
plot(w,abs(Y));
title('Magnitude');
xlabel('w');
subplot(2,2,2);
plot(w,angle(Y));
title('Phase');
xlabel('w');
subplot(2,2,3);
plot(w,real(Y));
title('Real');
xlabel('w');
subplot(2,2,4);
plot(w,imag(Y));title('Imaginary');
xlabel('w');



% figure 4
% finite duration sinusoid sin(pi*n/4) for n = [-200,200]
n = -200:200;
x = sin((pi*n)/4);
N0 = (length(n)+1)/2;
w = -10:0.01:10;
Y = DT_Fourier(x,N0,w);
figure(4);
subplot(2,2,1);
plot(w,abs(Y));
title('Magnitude');
xlabel('w');
subplot(2,2,2);
plot(w,angle(Y));
title('Phase');
xlabel('w');
subplot(2,2,3);
plot(w,real(Y));
title('Real');
xlabel('w');
subplot(2,2,4);
plot(w,imag(Y));title('Imaginary');
xlabel('w');

%part c
% DTFT of a^n*u(n) and (-a)^n*u(n)
n = 0:100;
b = 0.01;
%b = 0.5;
%b = 0.99;
x1 = b.^n;      % computing the vector b^n and (-b)^n
x2 = (-b).^n;   
N0 = 1;
w = -10:0.01:10;
Y1 = DT_Fourier(x1,N0,w);   %performing the DTFT for both the given functions
Y2 = DT_Fourier(x2,N0,w);
figure(5);
% below statements are for plotting the subplots
subplot(2,2,1);
plot(n,x1); 
title('x(t) for a = b , b = 0.01');
xlabel('n');
subplot(2,2,2);
plot(n,x2);
title('x(t) for a= -b , b = 0.01');
xlabel('n');
subplot(2,2,3);
plot(w,abs(Y1));
title('Magnitude for a = b , b = 0.01');
xlabel('w');
subplot(2,2,4);
plot(w,abs(Y2));
title('Magnitude for a = -b , b = 0.01');
xlabel('w');

% observation as b value increases
% as the value of b increases from 0.01 to 0.99 then the DTFT of the
% functions change from a sinusoidal to an impulse train.