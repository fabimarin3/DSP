
function Y = sN(A,Fo,Fs,fase,ti,tf)
    figure
    X = (ti/Fs):0.0001:(tf/Fs)
    Y = A*sin(2*pi*Fo*(X)+fase);
    stem(X,Y);
end