
%%

[sig1, ~] = audioread('task2sig.wav');

plot(sig1);

%% 
fs = 44100;
ts = 1/fs;
dur = 1;
%dur = 7.5233;
t = 0:ts:dur-ts; 
A = 1;

x = (1.3)*sin(2*pi*15*t) ...             % 15 Hz component
  + (1.7)*sin(2*pi*40*(t-2)) ...         % 40 Hz component
  + 2.5*gallery('normaldata',size(t),4); % Gaussian noise;
n = length(x)
f = (0:n-1)*(fs/n);
power = abs(y).^2/n;
y = fft(x);



plot(fs,power)
xlabel('Frequency')
ylabel('Power')
%%

% First 5 frequencies taken from the piano sample

f1= 258;
f2= 516;
f3= 775;
f4= 1055;
f5= 1313;

% Each freqency multiplied by the signal generator to generate a signal for
% each frequency

sine1 = A * sin(2*pi*f1*t);
sine2 = A * sin(2*pi*f2*t);
sine3 = A * sin(2*pi*f3*t);
sine4 = A * sin(2*pi*f4*t);
sine5 = A * sin(2*pi*f5*t);

tot_sig = sine1+sine2+sine3+sine4+sine5; % adding the signals together
norm_sig = tot_sig/max(abs(tot_sig)); % normalising the total signal as it's clipping

%% ADSR ENVELOPE
len = length(norm_sig);

A = linspace(0, 1, len*0.01);
D = linspace(1, 0.3, len*0.29);
S = linspace(0.3, 0.3, len*0.4);
R = linspace(0.3, 0, len*0.3);

envelope = [A D S R];
% put the straight lines into a single array.  

FinalSig = norm_sig.*envelope; 
%% Normalise + finished signal

%% Poltting the envelope signal

subplot(211),plot(FinalSig);
axis([0 44100 -2 2]);
% plot the new signal.

subplot(212), plot(FinalSig); hold on;
plot(FinalSig, 'r');
axis([0 44100 -2 2]);

sound(FinalSig, fs);

%%

%applying hilbert filter to piano signal

y = hilbert(sig1);    
env = abs(y);       %Applying abs to get the envelope of the piano signal      

env = env';    %transpose 
env = [env 0];    %add zero to match matrix dimensions 

Piano2 = norm_sig.*env;   %multiple signal by extract envelope + finished signal
 










