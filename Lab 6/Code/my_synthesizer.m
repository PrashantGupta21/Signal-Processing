function y = my_synthesizer(A,F_notes,P,adsr,td_notes,fs)
% Initialize output as empty
y = [];
% Loop over the notes
for ii = 1:length(F_notes)
 % scale a,d,sd,r so that they sum to required note duration
 s = adsr(3);
 adsr_sc = td_notes(ii)*adsr;
 adsr_sc(3) = s;
 % Compute the time vector and ADSR envelope for this note
 [t,env] = envelope(adsr_sc(1),adsr_sc(2),adsr_sc(3),adsr_sc(4),adsr_sc(5),fs);
 % Compute the sum of harmonics for this note
 xt = harmonics(A,F_notes(ii),P,td_notes(ii),fs);
 % Modulate the sum of harmonics with the envelope
 xte = xt.*env;
 % Add the note to the sequence
 y = [y,xte];
end
end

