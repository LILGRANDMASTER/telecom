fd = 100000/2;
t = 0:1/fd:2;

N = length(t);
f = 25;

x = cos(2*pi*25*t);

X = zeros(N,1);
X = fft(x);

figure()
f = fd*(0:N-1)'/N;
Xm = abs(X)/N;
plot(f,Xm);