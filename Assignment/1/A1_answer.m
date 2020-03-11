
%assignment 1 Bioinstrumentation 
%let's use lecture 6 example 9
Lr = 0.05 %attenuation of ripple
n  = 3 % order is 3


cutoff = 1000000000 %cut off frequency is 1GHz

frequency = [] % set frequency vector to 0 in begining
interval =0  
for j=1:100 %create 100 frequency
    interval = interval + 30000000 % since cutt of frequency is 1, let's set range to 0.03    
    frequency =[frequency,interval] % freqeuncy vector 0.03 - 3.0
end


C0  = 1 %refer to slide 41 for the detailed formula 
x   = frequency/cutoff
C2_final = []

for i = 1:length(x)
    C1 = x(i)
    C2_interim = 2 * x(i) * C1 - C0
    C2_final = [C2_final,C2_interim]
end 


    C3_final = []

for i = 1:length(x)
    C1  = x(i)
    C3_interim  = 2 * x(i) * C2_final(i)  - C1
    C3_final = [C3_final,C3_interim]
end 


H = []

for i = 1:length(C3_final)
    H1 = 1/(1 + F0 * C3_final(i))
    H= [H,H1]
end 


a  = coth(Lr/17.372) 
Lr1= Lr/10
F0 = 10^Lr1 -1

F1 = 0.25 * log(coth(Lr/17.372))
F2 = sinh(2*F1/3)

k1 = 1
n  = 3 
a1 = sin(((2*k1-1)*3.14)/(2*n))
b1 = F2^2 + sin(k1*3.14/n)^2
g1 = 2 *a1/F2

k2 = 2
a2 = sin(((2*k2-1)*3.14)/(2*n))
b2 = F2^2 + sin(k2*3.14/n)^2
g2 = (4*a1*a2)/(b2*g1)

k3 = 3
a3 = sin(((2*k3-1)*3.14)/(2*n))
g3 = g1
Z  = 50 %let's set resistor value 50 50ohm. 

w  =2*3.14*1000000000
L1 = (Z*g1)/(w) * 10^9
L3 = L1
C2 = (g2)/(Z*w) * 10^12

first_inductor = ['First Inductor value is ',num2str(L1),'nH base on cutoff frequency of 1GHz and ripple 0.05dB and order is 3']
second_capacitor = ['Second capacitor value is ',num2str(C2),'pF base on cutoff frequency of 1GHz and ripple 0.05dB and order is 3']
third_inductor = ['Third Inductor value is ',num2str(L3),'nH base on cutoff frequency of 1GHz and ripple 0.05dB and order is 3']


plot(x,H)  % plot response vesus frequency ratio
xlabel("Acutal Frequency divide by cutoff frequency W/Wc")
ylabel("potential gain response in dB")
title("Figure 1: Low pass filter response")
disp('Figure 1 shows low-pass filter response')

%assignment 1 Bioinstrumentation 
%let's use lecture 6 example 9
Lr = 0.05 %attenuation of ripple
n  = 3 % order is 3


cutoff = 1000000000 %cut off frequency is 1GHz

frequency = [] % set frequency vector to 0 in begining
interval =0  
for j=1:100 %create 100 frequency
    interval = interval + 30000000 % since cutt of frequency is 1, let's set range to 0.03    
    frequency =[frequency,interval] % freqeuncy vector 0.03 - 3.0
end


C0  = 1 %refer to slide 41 for the detailed formula 
x   = frequency/cutoff
C2_final = []

for i = 1:length(x)
    C1 = x(i)
    C2_interim = 2 * x(i) * C1 - C0
    C2_final = [C2_final,C2_interim]
end 


    C3_final = []

for i = 1:length(x)
    C1  = x(i)
    C3_interim  = 2 * x(i) * C21(i)  - C1
    C3_final = [C3_final,C3_interim]
end 


H = []

for i = 1:length(C3_final)
    H1 = 1/(1 + F0 * C3_final(i))
    H= [H,H1]
end 


a  = coth(Lr/17.372) 
Lr1= Lr/10
F0 = 10^Lr1 -1

F1 = 0.25 * log(coth(Lr/17.372))
F2 = sinh(2*F1/3)

k1 = 1
n  = 3 
a1 = sin(((2*k1-1)*3.14)/(2*n))
b1 = F2^2 + sin(k1*3.14/n)^2
g1 = 2 *a1/F2

k2 = 2
a2 = sin(((2*k2-1)*3.14)/(2*n))
b2 = F2^2 + sin(k2*3.14/n)^2
g2 = (4*a1*a2)/(b2*g1)

k3 = 3
a3 = sin(((2*k3-1)*3.14)/(2*n))
g3 = g1
Z  = 50 %let's set resistor value 50 50ohm. 

w  =2*3.14*1000000000
L1 = (Z*g1)/(w) * 10^9
L3 = L1
C2 = (g2)/(Z*w) * 10^12

first_inductor = ['First Inductor value is ',num2str(L1),'nH base on cutoff frequency of 1GHz and ripple 0.05dB and order is 3']
second_capacitor = ['Second capacitor value is ',num2str(C2),'pF base on cutoff frequency of 1GHz and ripple 0.05dB and order is 3']
third_inductor = ['Third Inductor value is ',num2str(L3),'nH base on cutoff frequency of 1GHz and ripple 0.05dB and order is 3']


plot(x,H)  % plot response vesus frequency ratio
xlabel("Acutal Frequency divide by cutoff frequency W/Wc")
ylabel("potential gain response in dB")
title("Figure 1: Low pass filter response")
disp('Figure 1 shows low-pass filter response')




disp(first_inductor)
disp(second_capacitor)
disp(third_inductor)







disp(first_inductor)
disp(second_capacitor)
disp(third_inductor)



