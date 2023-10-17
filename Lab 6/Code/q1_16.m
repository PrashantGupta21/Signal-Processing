% parameters
fs = 10000;
n = 0:1/fs:(1/fs)*500;

% part-a
td1 = 4;
F1 = [350 440];
A1 = 0.5*ones(size(F1));
P1 = zeros(size(F1));
x1 = SineSum(A1,F1,P1,td1,fs);

% part-b
td2 = 0.5;
F2 = [480 620];
A2 = 0.5*ones(size(F2));
P2 = zeros(size(F2));
b1 = SineSum(A2,F2,P2,td2,fs);
z1 = SineSum(0,0,0,td2,fs);
x2 = [b1,z1,b1,z1,b1,z1,b1,z1];

% part-c
td3 = 2;
F3 = [440 480];
A3 = 0.5*ones(size(F3));
P3 = zeros(size(F3));
b2 = SineSum(A3,F3,P3,td3,fs);
z2 = SineSum(0,0,0,td3,fs);
x3 = [b2,z2,b2,z2,b2,z2,b2,z2];

% part-e
subplot(3,1,1)
plot(n,x1(1:length(n)));
title("Familiar Sound Signal x1");
xlabel("n");
ylabel("x1[n]");
subplot(3,1,2)
plot(n,x2(1:length(n)));
title("Familiar Sound Signal x2");
xlabel("n");
ylabel("x2[n]");
subplot(3,1,3)
plot(n,x3(1:length(n)));
title("Familiar Sound Signal x3");
xlabel("n");
ylabel("x3[n]");

% part-d (yes, these sounds are familiar)
sound(x1);
pause(5);
sound(x2);
pause(5);
sound(x3);