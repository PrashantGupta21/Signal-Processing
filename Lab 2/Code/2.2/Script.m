% part b and c

w0 = 1;
A = [1/2 0 1/2];                %initalising variables and parameters
T = 2*pi;
t = -2*T:0.01:2*T;
original = partialfouriersum(A,(2*pi)/w0,t);        % constructing the unfiltered function
LPFcoeff = myLPF(A,w0,0.5);                         %filtering the signal
y2 = partialfouriersum(LPFcoeff,(2*pi)/w0,t);       % constructing the fitered Signal

% all the below commands are to plot graph
figure(1);                                          
plot(t,real(y2),'-r');
title('Graph for Low Pass Filter when cut-off frequency = 0.5');
xlabel('time(sec)');
ylabel('f(t)');
hold on;
plot(t,original,'--b');
legend('After Filtering','Before Filtering');
hold off;

% below are similar statements for remaining 3 plots
w0 = 1;
A = [1/2 0 1/2];
T = 2*pi;
t = -2*T:0.01:2*T;
original = partialfouriersum(A,(2*pi)/w0,t);
LPFcoeff = myLPF(A,w0,2);
y2 = partialfouriersum(LPFcoeff,(2*pi)/w0,t);

figure(2);
plot(t,real(y2),'-r');
title('Graph for Low Pass Filter when cut-off frequency = 2');
xlabel('time(sec)');
ylabel('f(t)');
hold on;
plot(t,original,'--b');
legend('After Filtering','Before Filtering');
hold off;

w0 = 1;
A = [1/2 0 1/2];
T = 2*pi;
t = -2*T:0.01:2*T;
y = partialfouriersum(A,(2*pi)/w0,t);
HPFcoeff = myHPF(A,w0,0.5);
y2 = partialfouriersum(HPFcoeff,(2*pi)/w0,t);

figure(3);
plot(t,real(y2),'-r');
title('Graph for High Pass Filter when cut-off frequency = 0.5');
xlabel('time(sec)');
ylabel('f(t)');
hold on;
plot(t,original,'--b');
legend('After Filtering','Before Filtering');
hold off;

w0 = 1;
A = [1/2 0 1/2];
T = 2*pi;
t = -2*T:0.01:2*T;
y = partialfouriersum(A,(2*pi)/w0,t);
HPFcoeff = myHPF(A,w0,2);
y2 = partialfouriersum(HPFcoeff,(2*pi)/w0,t);

figure(4);
plot(t,real(y2),'-r');
title('Graph for High Pass Filter when cut-off frequency = 2');
xlabel('time(sec)');
ylabel('f(t)');
hold on;
plot(t,original,'--b');
legend('After Filtering','Before Filtering');
hold off;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% part d 
G = 1;
a = 1;          %initalising variables and parameters
w0 = 1;
A = [1/2 0 1/2];
T = 2*pi;
t = -2*T:0.01:2*T;

original = partialfouriersum(A,(2*pi)/w0,t);        % constructing the unfiltered function
nonidealcoeff = NonIdeal(A,w0,G,a);                 %filtering the signal
y2 = partialfouriersum(nonidealcoeff,(2*pi)/w0,t);  %% constructing the fitered Signal

% all the below commands are to plot graph
figure(1);
plot(t,y2,'-r');
title('Graph for Non-ideal Filter');
xlabel('time(sec)');
ylabel('f(t)');
hold on;
plot(t,original,'--b');
legend('After Filtering','Before Filtering');
hold off;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% part e
w0 = 1;
A = [1/2 -1/2i 0 0 0 1/2i 1/2];                 %initalising variables and parameters
T = 2*pi;
t = -2*T:0.01:2*T;
original = partialfouriersum(A,(2*pi)/w0,t);         % constructing the unfiltered function
LPFcoeff = myLPF(A,w0,2.5);                          %filtering the signal
y2 = partialfouriersum(LPFcoeff,(2*pi)/w0,t);        % constructing the fitered Signal

% all the below commands are to plot graph
figure(1);
plot(t,(y2),'-r');
title('Graph for Low Pass Filter when cut-off frequency = 2.5');
xlabel('time(sec)');
ylabel('f(t)');
hold on;
plot(t,original,'--b');
legend('After Filtering','Before Filtering');
hold off;

%similar statements for high pass filtering
w0 = 1;
A = [1/2 -1/2i 0 0 0 1/2i 1/2];
T = 2*pi;
t = -2*T:0.01:2*T;
original = partialfouriersum(A,(2*pi)/w0,t);
HPFcoeff = myHPF(A,w0,2.5);
y2 = partialfouriersum(HPFcoeff,(2*pi)/w0,t);

figure(2);
plot(t,(y2),'-r');
title('Graph for High Pass Filter when cut-off frequency = 2.5');
xlabel('time(sec)');
ylabel('f(t)');
hold on;
plot(t,original,'--b');
legend('After Filtering','Before Filtering');
hold off;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% part f
w0 = 1;
A = csvread('sqwave(opt).csv');
T = 2*pi;
t = -2*T:0.01:2*T;
original = partialfouriersum(A,(2*pi)/w0,t);
LPFcoeff = myLPF(A,w0,2.5);
y2 = partialfouriersum(LPFcoeff,(2*pi)/w0,t);

figure(1);
plot(t,(y2),'-r');
title('Graph for Low Pass Filter when cut-off frequency = 2.5');
xlabel('time(sec)');
ylabel('f(t)');
hold on;
plot(t,original,'--b');
legend('After Filtering','Before Filtering');
hold off;T = 2*pi;
t = -2*T:0.01:2*T;
original = partialfouriersum(A,(2*pi)/w0,t);
LPFcoeff = myLPF(A,w0,2.5);
y2 = partialfouriersum(LPFcoeff,(2*pi)/w0,t);

figure(1);
plot(t,(y2),'-r');
title('Graph for Low Pass Filter when cut-off frequency = 2.5');
xlabel('time(sec)');
ylabel('f(t)');
hold on;
plot(t,original,'--b');
legend('After Filtering','Before Filtering');
hold off;


w0 = 1;
A = csvread('sqwave(opt).csv');
T = 2*pi;
t = -2*T:0.01:2*T;
original = partialfouriersum(A,(2*pi)/w0,t);
HPFcoeff = myHPF(A,w0,2.5);
y2 = partialfouriersum(HPFcoeff,(2*pi)/w0,t);

figure(2);
plot(t,(y2),'-r');
title('Graph for High Pass Filter when cut-off frequency = 2.5');
xlabel('time(sec)');
ylabel('f(t)');
hold on;
plot(t,original,'--b');
legend('After Filtering','Before Filtering');
hold off;