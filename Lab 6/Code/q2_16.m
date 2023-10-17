% parameters
N = 15; % part-c N = [5 10 15];
fs = 10000; 
n = 0:1/fs:(1/fs)*500;

td = 1;
f0 = 200; % part-c f0 = [50,100,150,200]
P = zeros(1,N);

A1 = zeros(1,N);
A2 = zeros(1,N);
A3 = zeros(1,N);
A4 = zeros(1,N);
A5 = zeros(1,N);

% part-a,b,d
for k = 1:N
    A1(k) = 1/k;
    A2(k) = 1/(k*k);
    A3(k) = sin(pi*k/N);
    A4(k) = cos(pi*k/N);
    A5(k) = k;
end

x1 = harmonics(A1,f0,P,td,fs);
x2 = harmonics(A2,f0,P,td,fs);
x3 = harmonics(A3,f0,P,td,fs);
x4 = harmonics(A4,f0,P,td,fs);
x5 = harmonics(A5,f0,P,td,fs);

% part-e
subplot(5,1,1)
plot(n,x1(1:length(n)));
xlabel("n");
ylabel("x1[n]");
subplot(5,1,2)
plot(n,x2(1:length(n)));
xlabel("n");
ylabel("x2[n]");
subplot(5,1,3)
plot(n,x3(1:length(n)));
xlabel("n");
ylabel("x3[n]");
subplot(5,1,4)
plot(n,x4(1:length(n)));
xlabel("n");
ylabel("x4[n]");
subplot(5,1,5)
plot(n,x5(1:length(n)));
xlabel("n");
ylabel("x5[n]");

soundsc(x1);
pause(3);
soundsc(x2);
pause(3);
soundsc(x3);
pause(3);
soundsc(x4);
pause(3);
soundsc(x5);