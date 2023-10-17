function [t_env,env] = envelope(a,d,s,sd,r,fs)
% Attack
% For each portion of the note, determine the corresponding piece of time
% vector and envelope
% Attack: amplitude linearly increases from 0 to 1 in ‘a’ seconds
attack = zeros(1,fs*a);
for k = 1:fs*a
    attack(k) = k/(fs*a);       % equation for straight line from 0 to 1
end
tattack = 0:1/fs:a;             % declaring the env and t_env vectors
env = attack;
t_env = tattack;

% Decay: amplitude linearly decreases from 1 to ‘s’ in ‘d’ seconds
delay = zeros(1,fs*d);
for k = 1:fs*d
    delay(k) = 1 - ((1-s)*k)/(fs*d);    % equation of straight line from 1 to s
end
tdelay = a+1/fs:1/fs:a+d;
env = [env,delay];                      % concatenating the vector env and t_env
t_env = [t_env tdelay];

% Sustain: amplitude stays at ‘s’ for ‘sd’ seconds
sustain = zeros(1,fs*sd);
for k = 1:fs*sd
    sustain(k) = s;                     % value remains constant
end
tsustain = a+d+1/fs:1/fs:a+d+sd;
t_env = [t_env, tsustain];
env = [env,sustain];

% Release: amplitude linearly decreases from ‘s’ to 0 in ‘r’ seconds
release = zeros(1,fs*r);
for k = 1:fs*r
    release(k) = s - (s*k)/(fs*r);
end
trelease = a+d+sd+1/fs:1/fs:a+d+sd+r;
t_env = [t_env, trelease];
env = [env,release];

% adding 0 at starting of env
env = [0,env];
end