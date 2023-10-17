[y,Fs] = audioread('file_example_WAV_1MG.wav'); % reading the audio file
%part 1
y_quantized(:,1) = quadratic_quant(y(:,1),3,1); % quantizing the 1st column of y
y_quantized(:,2) = quadratic_quant(y(:,2),3,1); % quantizing the 2nd column of y
sound(y_quantized,Fs);
pause(10);

%part 2
for B = 1:8                                         % running loop for B
    y_quantized(:,1) = quadratic_quant(y(:,1),B,1); 
    y_quantized(:,2) = quadratic_quant(y(:,2),B,1);
    sound(y_quantized,Fs);
    pause(2);                                       % playing the sound for 2 seconds for each value of B
    clear sound;
end
%{
As levels increase i.e., as B increase the quality of sound becomes better
and approaches the original sound

When a signal is quantized then the signal value which belongs to some
interval is at the mid point of that interval and hence a lower frequencies
tend to attain the larger deviation and we hear a lot of noise since the
intervals are large as B is small,
now as B is increased then the intervals become smaller and hence we can
store values with much smaller error and that's the reason why on increasing
the value of B the quantized signal becomes more like the original signal
%}