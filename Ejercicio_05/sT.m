

function Y = sT(A,Fo,Fs,fase,ti,tf)
    figure
    T = ti:0.00001:tf;
    Y = A*sin(2*pi*Fo*T+fase);
    plot(T,Y);
    hold on 
end