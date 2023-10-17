t_fine = -10:0.001:10;                  % initilaising the time grid variable
% for Ts = 0.5
Ts = 0.5;
t_samples = -1:Ts:1;                    % Initiaising the time grid of sampling variable
x = 1-abs(t_samples);                   % declaring x = x(t) triangular wave
y1 = sinc_recon(t_samples,x,Ts,t_fine); % reconstructing the wave 
subplot(2,2,1);                         % plotting the reconstructed signal
plot(t_fine,y1);
title('Sampling done at Ts = 0.5');     % Adding the title and label to the plots
xlabel('time(sec)');
ylabel('f(t)');
hold on;

% Below 3 sets are similar operation for different values of Ts
% for Ts = 0.2
Ts = 0.2;
t_samples = -1:Ts:1;
x = 1-abs(t_samples);
y2 = sinc_recon(t_samples,x,Ts,t_fine);
hold off;
subplot(2,2,2);
plot(t_fine,y2);
title('Sampling done at Ts = 0.2');
xlabel('time(sec)');
ylabel('f(t)');
hold on;

% for Ts = 0.1
Ts = 0.1;
t_samples = -1:Ts:1;
x = 1-abs(t_samples);
y3 = sinc_recon(t_samples,x,Ts,t_fine);
hold off;
subplot(2,2,3);
plot(t_fine,y3);
title('Sampling done at Ts = 0.1');
xlabel('time(sec)');
ylabel('f(t)');
hold on;

% for Ts = 0.05
Ts = 0.05;
t_samples = -1:Ts:1;
x = 1-abs(t_samples);
y4 = sinc_recon(t_samples,x,Ts,t_fine);
hold off;
subplot(2,2,4);
plot(t_fine,y4);
title('Sampling done at Ts = 0.05');
xlabel('time(sec)');
ylabel('f(t)');
ylim([-0.2,1]);
hold on;