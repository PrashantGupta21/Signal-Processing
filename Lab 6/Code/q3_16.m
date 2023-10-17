fs = 10000;             % sampling frequency
xn = csvread('xn.csv'); % reading the file
[t_env,env] = envelope(0.2,0.2,0.7,0.4,0.2,fs); % evaluating the envelope plot
%[t_env,env] = envelope(0.35,0.15,0.7,0.30,0.20,fs);
% Listen to audio
soundsc(xn,fs);     
pause(2);
soundsc(xn.*env,fs);
% Plotting
% Subplot for function xn
subplot(3,1,1);
plot(t_env,xn);
title('Graph of xn of sin(pi*k/N)')
xlabel('t(sec)');
ylabel('xn');

% subplot for envelope graph
subplot(3,1,2);
plot(t_env,env);
title('Graph of ADSR Envelope')
xlabel('t(sec)');
ylabel('env');

% subplot for multiplication of Envelope and xn
subplot(3,1,3);
plot(t_env,xn.*env);
title('Graph of xn.*env')
xlabel('t(sec)');
ylabel('xn.*env');