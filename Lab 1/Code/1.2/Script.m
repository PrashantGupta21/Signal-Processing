T = 1;                      %initialising variable T as 1
A = csvread('1.1A.csv');    % reading values from the output of 1.1(a)
time_grid = -0.5:0.01:0.5;  % initialising the time variable
x = 2*cos(2*pi*time_grid) + cos(6*pi*time_grid);    % x corresponds to value of original signal
y = partialfouriersum(A,T,time_grid);               % y is the reconstructed signal

err = real(x-y);                                    % err gives the errors(the difference) between original and reconstructed signal
disp('MAE = ');                     
disp(max(abs(err)));                                %displaying the Maximum Absolute Error
disp('RMS Error = ');
disp(rms(err));                                     % displaying the RMS error

figure(1);                                          % plotting the combined graph of reconstructed and original function
plot(time_grid,real(y),'--r*');
title('Combined Graph of Original and Reconstructed function'); % Adding the title
xlabel('time(sec)')                                 % labelling the x and y axis
ylabel('f(t)')
hold on;
plot(time_grid,real(x),'--bo');
hold off;