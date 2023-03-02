clc
clear all
close all

f1 = 25;
f2 = [10,50,100,125,200];

fd = 300;
t0 = 0;
tmax = 2;
t = t0:1/fd:tmax;
N = length(t);


for i = 1:length(f2)
    x = cos(2*pi*f1*t) + cos(2*pi*f2(i)*t) + 5;
    
    [X,f] = lab_spectra(x,N,fd,'all');
    figure();
    plot(f,X);
    grid on
end

