
[x,y] = meshgrid(-1:0.01:1);
z = x+(1i*y);
p = 0.9; 
X = z./(z-p); 
Z = log(abs(X));
figure; % part-a
mesh(x,y,Z);
xlabel("real(z)");
ylabel("imag(z)");
zlabel("log|Xz|");
b = [1 0];
a = [1 -p];
figure; % part-b
zplane(b,a); 
[H,w] = freqz(b,a,1001);
figure; % part-c
plot(w,H);
xlabel("w");
ylabel("H");
title("freqz");
[h,n] = impz(b,a,51);
figure; % part-d
plot(n,h);
xlabel("n");
ylabel("h");
title("impz");
%}
% part-e
%{
[x,y] = meshgrid(-1:0.01:1);
z = x+(1i*y);
p = 1+1i; 
theta = pi/3;
r = 0.95;
X = (z.^2 - 2*cos(theta)*z + 1)./(z.^2 - 2*r*cos(theta)*z + r^2); 
Z = log(abs(X));
figure;
mesh(x,y,Z);
xlabel("real(z)");
ylabel("imag(z)");
zlabel("log|Xz|");
b = [1 -2*cos(theta) 1];
a = [1 -2*r*cos(theta) r^2];
figure;
zplane(b,a);
[H,w] = freqz(b,a,1001);
figure;
plot(w,H);
xlabel("w");
ylabel("H");
title("freqz");
[h,n] = impz(b,a,51);
figure;
plot(n,h);
xlabel("n");
ylabel("h");
title("impz");
%}
% part-f = The poles and zeros of the plot are at for p = . Changing theta
% changes the angle of ploes and zeros from the x-axis, and changing r
% changes the distances of poles from the center.