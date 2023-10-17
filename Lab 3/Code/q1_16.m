% Sampling for Ts = 0.001
Ts = 0.001;
t_fine = 0:Ts:2;                            %initiaising the time grid
x = cos(5*pi*t_fine) + sin(10*pi*t_fine);   % declaring x = x(t)

figure(1);                                  % plotting the graph of both the original and sampled signal
plot(t_fine,x);
title('Graph for Original and Sampled Signal'); %Adding title , label
xlabel('time(sec)');
ylabel('f(t)');
hold on;
% Sampling for Ts = 0.1
Ts = 0.1;
t_samples = 0:Ts:2;
x = cos(5*pi*t_samples) + sin(10*pi*t_samples);
stem(t_samples,x);                                  % Plotting the Sampled SIgnal
legend('Original Signal','Sampled Signal');         % Adding the Legend
hold off;