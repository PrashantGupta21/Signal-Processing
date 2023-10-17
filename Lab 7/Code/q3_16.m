%part (a)
N = 4;
% N = 16;
% N = 64;
fs = 1;
w = linspace(0,2*pi*fs,N);          % variable to which is used as x axis in graph
L = 4;
x1 = [ones(L,1); zeros(N-L,1)];     % storing function vector
y1 = fft(x1,N);                     % performing DFT
% plotting the graphs
figure(1);
subplot(3,1,1);
plot((0:N-1),x1);
xlabel("n");
ylabel("X[n]");
subplot(3,1,2);
plot(w,abs(y1));
xlabel("k (rad/sec)");
ylabel("Y[n]");
subplot(3,1,3);
plot(w,angle(y1));
xlabel("k (rad/sec)");
ylabel("Phase(Y[n]");
% For N = 4 only w = 0 rad/sec is present
% for N = 16 w = 0 is lowest w = 2.9 rad/sec is highest
% for N = 64 w = 0 is lowest w = 3.09 ad/sec is highest

%part(b),(c) and (d)
N = 20;
fs = 1;
L = 20;
k = (0:(L-1))*(1/fs);           % variable which is given as input variable
w  = linspace(0,2*pi*fs,N);     % variable to which is used as x axis in graph
%x2 = sin(3*pi*k/10);
%x2 = cos(3*pi*k/10);
x2 = sin(3*pi*(k-1)/10);        % vector storing function values
y2 = fft(x2,N);                 % output of FFT function
%plotting the graph
figure(2);
subplot(3,1,1);
plot(k,x2);
xlabel("n");
ylabel("X[n]");
subplot(3,1,2);
plot(w,abs(y2));
xlabel("k (rad/sec)");
ylabel("Y[n]");
subplot(3,1,3);
plot(w,angle(y2));
xlabel("k (rad/sec)");
ylabel("Phase(Y[n]");
% for the above 3 signals the high frequencies are around 0.99 rad/sec and
% rest are all zero

%part (e) and (f)
N = 20;
fs = 1;
L = 20;
k = (0:(L-1))*(1/fs);           % variable which is given as input variable
w  = linspace(0,2*pi*fs,N);     % variable to which is used as x axis in graph
%x3 = 0.8.^(k);
x3 = (-0.8).^(k);               % vector storing function values 
y3 = fft(x3,N);                 % output of FFT function
% plotting the graph
figure(3);  
subplot(3,1,1);
plot(k,x3);
xlabel("n");
ylabel("X[n]");
subplot(3,1,2);
plot(w,abs(y3));
xlabel("k (rad/sec)");
ylabel("Y[n]");
subplot(3,1,3);
plot(w,angle(y3));
xlabel("k (rad/sec)");
ylabel("Phase(Y[n]");
% For part (e) the highest frequency is around 3.14 rad/sec and lowest is 0 rad/sec
% for part (f) the peak lies at around 3.3 rad/sec and decreases on both sides