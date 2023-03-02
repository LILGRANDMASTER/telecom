close all
clear all

clc
clear all
close all

N = [51,201,601];
tmax = 2;
tmin = 0;

figure()
hold on
for i = 1:length(N)
    fd = N(i)/2
    t = tmin:1/fd:tmax;
    x = cos(2*pi*25*t) + 5;
    
    [X,f] = lab_spectra(x,length(x),fd,'all');
    length(X);
    plot(f,X);
    
end
grid on
hold off
legend(sprintf('N = %d',51),sprintf('N = %d',201),sprintf('N = %d',601));

    