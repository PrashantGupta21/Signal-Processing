% continous time signal
t_fine = 0:0.001:2;
t = t_fine;
xt = cos(5*pi*t)+sin(10*pi*t);

% sampled time signal
Ts = 0.1;
t_samples = 0:Ts:2;
n = t_samples;
xn = cos(5*pi*n)+sin(10*pi*n);

% reconstructed signals
figure;
subplot(2,2,1);
plot(t,xt);
hold on;
stem(n,xn);
hold off;
title('continous time')
xlabel('t');
ylabel('x(t)');

subplot(2,2,2);
y1 = interp1(n,xn,t,'previous');
plot(t,y1);
hold on;
stem(n,xn);
hold off;
title('interp1 previous');
xlabel('t');
ylabel('x(t)');
ylim([-2 2]);

subplot(2,2,3);
y2 = interp1(n,xn,t,'linear');
plot(t,y2);
hold on;
stem(n,xn);
hold off;
title('interp1 linear');
xlabel('t');
ylabel('x(t)');
ylim([-2 2]);

subplot(2,2,4);
y3 = sinc_recon(n,xn,Ts,t_fine);
plot(t,y3);
hold on;
stem(n,xn);
hold off;
title('sinc recon');
xlabel('t');
ylabel('x(t)');
ylim([-2 2]);

% MAE comparision
figure;
MAE = zeros(3,1);
xtr = xt(:,251:1751);
y1r = y1(:,251:1751);
y2r = y2(:,251:1751);
y3r = y3(:,251:1751,:);
MAE(1) = abs(max(y1r - xtr));
MAE(2) = abs(max(y2r - xtr));
MAE(3) = abs(max(y3r - xtr));
bar(MAE);
types = {'interp1 previous';'interp1 linear';'sinc recon'};
ylabel('MAE');
title('comparision of reconstruction methods');
set(gca,'xticklabel',types);

