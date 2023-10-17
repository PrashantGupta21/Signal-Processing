%part(b)
n1 = 0:24;
h1 = (sin((pi*(n1-25))/6))./(pi*(n1-25));       % time domain function of H_d(z)
hd1 = [h1,1/6];
n2 = 26:50;
h2 = (sin((pi*(n2-25))/6))./(pi*(n2-25));
hd1 = [hd1,h2];
y = fft(hd1,1001);                              % performing fft
high = max(y);
y1 = y/high;                                    % normalizing
x = linspace(0,2*pi,1001);
% plotting
figure;
subplot(3,1,1);
plot([0:50],hd1);
xlabel('n');
ylabel('h_{d}[n]');
subplot(3,1,2);
plot(x,mag2db(abs(y1)));
xlabel('w(in rad/sec)');
ylabel('Magnitude (in dB)');
ylim([-100,10]);
subplot(3,1,3);
plot(x,angle(y));
xlabel('w(in rad/sec)');
ylabel('Angle (in radians)');

%part(c)
blackwin = blackman(51);    % declaring a blackman window
blackwin = blackwin.';      % takign transpose
hd2 = hd1.*blackwin;        % new filter
y = fft(hd2,1001);          % performing fft
high = max(y);
y1 = y/high;                % normalising by dividing with the max value
x = linspace(0,2*pi,1001);
% plotting
figure;
subplot(3,1,1);
plot([0:50],hd2);
xlabel('n');
ylabel('h_{d}[n]');
subplot(3,1,2);
plot(x,mag2db(abs(y1)));
xlabel('w(in rad/sec)');
ylabel('Magnitude (in dB)');
ylim([-100,10]);
subplot(3,1,3);
plot(x,angle(y));
xlabel('w(in rad/sec)');
ylabel('Angle (in radians)');


%part(e)
n = 0:200;
% x = cos(pi*n/16) + 0.25*sin(pi*n/2);        % original function
x = cos(pi*n/16) + 0.25*rand(1,201);
y3 = conv(x,hd1);                           % convolving with the filter
% Plotting
figure;
subplot(2,1,1);
plot(n,x);
xlabel('n');
ylabel('f(x)');
title('Original Signal');
subplot(2,1,2);
plot([0:length(y3)-1],y3);
xlabel('n');
ylabel('f(x)');
title('Reconstruted Signal');


% part(f)
n = 0:50;
mult = cos(n*pi);           % creating a array with alternating 1 and -1
hd3 = mult.*hd1;            % multiplying the above array with 
y = fft(hd3,1001);          % performing fft
high = max(y);  
y1 = y/high;                % normalizing
x = linspace(0,2*pi,1001);  
% plotting
figure;
subplot(3,1,1);
plot([0:50],hd3);
xlabel('n');
ylabel('h_{d}[n]');
subplot(3,1,2);
plot(x,mag2db(abs(y1)));
xlabel('w(in rad/sec)');
ylabel('Magnitude (in dB)');
ylim([-100,10]);
subplot(3,1,3);
plot(x,angle(y));
xlabel('w(in rad/sec)');
ylabel('Angle (in radians)');
% This is a high pass filter