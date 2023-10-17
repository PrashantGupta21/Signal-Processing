fs = 10000;
M = 5;
N = 5;
adsr = [0.1 0.1 0.5 0.6 0.2];

F_notes_a = 50:5:100;
F_notes_b = 100:-10:40;
F_notes_c = 50 + 50*rand(1,M);
F_notes_d = [170,170,190,170,240,210,0,170,170,190,170,270,240,0,170,170,300,240,210,190,0,320,320,240,270,240];

td_notes_a = ones(size(F_notes_a));
td_notes_b = ones(size(F_notes_b));
td_notes_c = 0.5*ones(size(F_notes_c));
td_notes_d = 0.5*ones(size(F_notes_d));

P = zeros(1,N);
A = zeros(1,N);
A_d = zeros(1,N);

for k = 1:N
    A = 1/(k*k);
    A_d = 1/k;
end

y_a = my_synthesizer(A,F_notes_a,P,adsr,td_notes_a,fs);
y_b = my_synthesizer(A,F_notes_b,P,adsr,td_notes_b,fs);
y_c = my_synthesizer(A,F_notes_c,P,adsr,td_notes_c,fs);
y_d = my_synthesizer(A_d,F_notes_d,P,adsr,td_notes_d,fs);

soundsc(y_a);
pause(15);
soundsc(y_b);
pause(15);
soundsc(y_c);
pause(10);
soundsc(y_d);
pause(20);
%audiowrite("happy birthday.wav",y_d,fs);

key_Ah = 880;
key_B = 493.88;
key_Bh = 987.77;
key_C = 523.25;
key_Ch = 1046.5;
key_D = 587.33;
key_E = 659.26;
key_F = 698.46;
key_Fh = 739.99;
key_G = 783.99;

F_notes_e = [key_C,key_D,key_E,key_E,key_E,0,key_E,key_E,key_E,0,key_E,key_E,key_D,key_E,key_F,0,key_E,0,key_E,key_E,key_D,0,key_D,key_C,key_B,key_C,key_D,0,key_C,0,key_G,0,key_G,key_G,0,key_G,key_G,key_G,key_G,0,key_G,key_G,key_F,key_Ah,key_G,0,key_F,0,key_F,key_F,key_E,0,key_E,key_E,key_D,key_F,key_E,0,key_E,0,key_E,key_E,key_E,0,key_E,key_D,key_G,key_G,key_G,0,key_F,0,key_F,0,key_E,0,key_E,key_E,key_D,key_D,key_D,key_C,key_B,key_D,key_C,0,key_C,key_D,key_E,key_E,key_E,0,key_E,key_D,key_E,key_F,0,key_E,key_F,key_G,key_G,key_G,0,key_F,key_E,key_D,key_F,key_E,0,key_E,0,key_E,key_D,key_D,key_D,key_C,key_B,key_D,key_C,0,key_C,key_C,key_G,key_G,key_G,0,key_G,key_G,key_G,0,key_G,key_G,key_F,key_Ah,key_G,0,key_F,0,key_F,key_F,key_E,0,key_E,key_E,key_D,key_F,key_E,0,key_Ch,key_Bh,key_Ch,0,key_Bh,key_Ah,key_Bh,0,key_Ah,key_G,key_Ah,0,key_C,key_C,0,key_D,key_D,0,key_E,key_E,0,key_D,key_E,key_F];
td_notes_e = 0.3*ones(size(F_notes_e));
y_e = my_synthesizer(A_d,F_notes_e,P,adsr,td_notes_e,fs);
soundsc(y_e);
%audiowrite("jana gana mana.wav",y_e,fs);
