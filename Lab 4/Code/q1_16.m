%Bit Rate = 256 kbps
[y1,Fs1] = audioread('file_example_WAV_1MG.wav');   % Reading the Audio file
disp('The Sampling rate is :')                      
disp(Fs1)                                           % displaying the various questions asked in question       
dur1 = length(y1)/Fs1;
disp('The duration(in sec) is :')
disp(dur1)
bits1 = 256000/Fs1;
disp('The bits per sample is :')
disp(bits1)
disp('The Quantization level is :')
disp(2.^bits1)
sound(y1,Fs1)                               % playing sound at different frequencies
%sound(y1,0.8*Fs1)      
%sound(y1,1.2*Fs1)

%{
% Bit Rate = 512 kbps
[y2,Fs2] = audioread('file_example_WAV_2MG.wav');
disp('The Sampling rate is :')
disp(Fs2)
dur2 = length(y2)/Fs2;
disp('The duration(in sec) is :')
disp(dur2)
bits2 = 512000/Fs2;
disp('The bits per sample is :')
disp(bits2)
disp('The Quantization level is :')
disp(2.^bits2)
sound(y2,Fs2)
sound(y2,0.8*Fs2)
sound(y2,1.2*Fs2)


%Bit Rate = 1411 kbps
[y3,Fs3] = audioread('file_example_WAV_5MG.wav');
disp('The Sampling rate is :')
disp(Fs3)
dur3 = length(y3)/Fs3;
disp('The duration(in sec) is :')
disp(dur3)
bits3 = 1411000/Fs3;
disp('The bits per sample is :')
disp(bits3)
disp('The Quantization level is :')
disp(2.^bits3)
sound(y3,Fs3)
sound(y3,0.8*Fs3)
sound(y3,1.2*Fs3)


% Bit Rate = 1411 kbps
[y4,Fs4] = audioread('file_example_WAV_10MG.wav');
disp('The Sampling rate is :')
disp(Fs4)
dur4 = length(y4)/Fs4;
disp('The duration(in sec) is :')
disp(dur4)
bits4 = 1411000/Fs4;
disp('The bits per sample is :')
disp(bits4)
disp('The Quantization level is :')
disp(2.^bits4)
sound(y4,Fs4)
sound(y4,0.8*Fs4)
sound(y4,1.2*Fs4)
%}
%{
When we play the sound at lower frequency 0.8Fs then the sound is played at
a slower speed and hence the frequency of the sound decreases

When we play the sound at higher frequency 1.2Fs then the sound is played at
a faster speed and hence the frequency of the sound increases

We can use property of fourier transform that
x(at) = (1/|a|)*X(w/a)
Since the frequency is multiplied by a factor of m by a hence the value of a = 1/m
Hence when m > 1 then a is less than 1 and 1/a > 1 So we can say from the
property that the amplitude of higher frequencies increases and hence the
sound is played at a higher frequency
%}