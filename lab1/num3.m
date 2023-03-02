close all
clear all
clc

tmax = [2,10,18];
fd = 200;

figure()
hold on
for i = 1:length(tmax)
    t = 0:1/fd:tmax(i);
    N = length(t);
    x = cos(2*pi*25*t) + 5;
    
    [X,f] = lab_spectra(x,N,fd,'all');
    
    plot(f,X);
end
grid on
hold off
legend(sprintf('t = %d',2),sprintf('t = %d',10),sprintf('t = %d',18));

