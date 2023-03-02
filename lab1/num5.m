clc
clear all
close all

t0 = 0;
tmax = 2;
fd = 100;
t = t0:1/fd:tmax;
N = length(t);

x = cos(2*pi*25*t) + 5;

figure()
hold on

[X,f] = lab_spectra(x,N,fd,'nowindow');
plot(f,X);

[X,f] = lab_spectra(x,N,fd,'all');
plot(f,X);

grid on, hold off
