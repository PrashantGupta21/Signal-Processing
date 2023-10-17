n = 0:1000;

subplot(4,1,1)
h = zeros(size(n));
M = 5;
for k = 1:M
    h(k) = 1/M;
end
plot(n,h);
title("impulse response filt M=5");
xlabel("n")
ylabel("h(n)");

subplot(4,1,2)
h = zeros(size(n));
M = 21;
for k = 1:M
    h(k) = 1/M;
end
plot(n,h);
title("impulse response filt M=21");
xlabel("n")
ylabel("h(n)");

subplot(4,1,3)
h = zeros(size(n));
M = 51;
for k = 1:M
    h(k) = 1/M;
end
plot(n,h);
title("impulse response filt M=51");
xlabel("n")
ylabel("h(n)");

subplot(4,1,4)
h = zeros(size(n));
h(1) = 1;
h(2) = -1;
plot(n,h);
title("impulse response diff");
xlabel("n")
ylabel("h(n)");