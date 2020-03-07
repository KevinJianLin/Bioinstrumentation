

%refer to lecture 6 slide 47


%to claim a numeric vector

%t = [1 , 2, 3 ,4, 5]

%value = [ 10, 20, 30, 40,50]

%plot(t,value)

% in order to see the graph, you need to close the other graph

%linspace(1,100)%create 100 evenly distributed number from x1 and x2.

%type_of_filter = input["please select type of filter"]

%Order = input["please enter order of "]

% ripple = input[" "]

%cut_off = input[" "]

%example 9 slide 44 lecture 6

%

%F1 = 0.25 ln{coth(Lr/17.32)} => slide 42, what is F1 and F2??

%F2 = sinh (2F1/n)

% Lr ripple attenuation in pass-band

% question is asking for frequncy response for an equal-ripple where H(w) which is V0 /Vs, 

% H = 1 + F0 

% n = order of filter 

% x-axis is cutoff frequency at different values of repsonse

% curve is cut-off frequency and y-axis is Vo / Vs

ripple = 0.05 
order = 3
cutofffrequency = 1

% formula for cutofffrequency of low pass filter
% fc = 1/(2 * pi * resistance * capacitor )
F1 = 1.4626
F2 = 1.1371


% we are talking about filter here

% The purpose of op amp is to obtain gain of voltage as output after voltage gain, signal become stronger???

%RG refers to resistor gain in amplifier. 

%low pass filter => only low frequency can pass through, high

%frequency filter out. From 0Hz to critical frequency, other

% frequency filter out ,band refer to frequqncy range, pass band refers to
% the range of frequency that signal passes
%stop band is the frequency range that filter filter them out

% order of filter basically means that the number of resistors that from voltage source 
% prior passing throuhg filter. if one then is first order
% rippl unit is dB. It occurs ripple is calculated as 20 log ???slide 14 lecture 6
% Wc is cut off frequency then what about W0 and W?????
% y-axis is in dB unit meaning voltage ratio. gain = 10log (Vout/Vin)
% cut off frequency in low pass filter refers to -3dB response, and typically 
% Xc refers to capacitor reactance. it can be caculated through Xc = 1/(2 pi f C) 
% whereas f is frequency and C is capacitance in Farad such as uF when I drew 
% circuit in Eagle software
% cut off frequency formular for fc  = 1 / (2 pi R C) where R is resistance value in ohm
% C is capacitance in F or uF. slide 18. source of voltage is also having frequency
% Vout / V in = / square root (1+wRC)^2. where w = 2 pi f which is source frequency
% high pass filter is opposite of low pass filter, it has stop band first then pass band
% meaning that it filter out all of frequncy that below cut off frequncy. 

% up to slide 25











































