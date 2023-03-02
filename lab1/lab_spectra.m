function [ X, f ] = lab_spectra( x,N,fd,mode )

    [m,~] = size(x);
    if m == 1
        x = x';
    end
    
    switch mode
        case 'all'
            x = x - sum(x)/length(x);
            x = x.*(0.5-0.5*cos(2*pi*(0:N-1)/(N-1)))';
        case 'nowindow'
            x = x - sum(x)/length(x);
        case 'nomean'
            x = x.*(0.5-0.5*cos(2*pi*(0:N-1)/(N-1)))';
        case 'none'
    end
    
    X = zeros(N,1);
    
    for k = 0:(N-1)
        sre = 0;
        sim = 0;
        for n = 0:(N-1)
            
            re = x(n+1)*cos(2*pi*k*n/N);
            im = x(n+1)*sin(2*pi*k*n/N);
            
            sre = sre + re;
            sim = sim + im;
        end
        X(k+1) = 2/N*sqrt(sre^2 + sim^2);
    end
    
    f = fd*(0:N-1)'/N;
    %X = X(1:idivide(int32(length(X)),int32(2)) + 1,1);
    %f = f(1:idivide(int32(length(f)),int32(2)) + 1,1);
    
    
end

