t_fine = 0:0.001:2;                     %initialsing the time grd variable
% for Ts = 0.1
Ts = 0.1;           
t_samples = 0:Ts:2;                     % initialising the sampling time variable
x1 = cos(5*pi*t_samples);               % declaring x1 as the function cos(5*pi*t)
y1 = sinc_recon(t_samples,x1,Ts,t_fine);% reconstructing the signal
subplot(2,2,1);                         % Plotting the Graph of Reconstructed Signal by sinc interpolation
plot(t_fine,y1);
title('Sampling done at Ts = 0.1');     % Adding the title and label 
xlabel('time(sec)');
ylabel('f(t)');
hold on;
stem(t_samples,x1);                     % plotting the sampled signal
legend('Reconstructed','Sampled');

% Below 3 are similar code as above with different value of Ts
% for Ts = 0.2
Ts = 0.2;
t_samples = 0:Ts:2;
x2 = cos(5*pi*t_samples);
y2 = sinc_recon(t_samples,x2,Ts,t_fine);
hold off;
subplot(2,2,2);
plot(t_fine,y2);
title('Sampling done at Ts = 0.2');
xlabel('time(sec)');
ylabel('f(t)');
hold on;
stem(t_samples,x2);
legend('Reconstructed','Sampled');

% for Ts = 0.3
Ts = 0.3;
t_samples = 0:Ts:2;
x3 = cos(5*pi*t_samples);
y3 = sinc_recon(t_samples,x3,Ts,t_fine);
hold off;
subplot(2,2,3);
plot(t_fine,y3);
hold on;
title('Sampling done at Ts = 0.3');
xlabel('time(sec)');
ylabel('f(t)');
stem(t_samples,x3);
legend('Reconstructed','Sampled');

% for Ts = 0.4
Ts = 0.4;
t_samples = 0:Ts:2;
x4 = cos(5*pi*t_samples);
y4 = sinc_recon(t_samples,x4,Ts,t_fine);
hold off;
subplot(2,2,4);
plot(t_fine,y4);
hold on;
title('Sampling done at Ts = 0.4');
xlabel('time(sec)');
ylabel('f(t)');
ylim([-1.5,1.5]);
stem(t_samples,x4);
legend('Reconstructed','Sampled');