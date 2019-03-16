%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%Funci�n%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function FT = jejepz(La, Jm, J2, N1, N2, Ki, Bm,Ra,Kb)

    A= (La/Ki)*((Jm*(N1/N2)+J2));
    B = (1/Ki)*(La*Bm*(N1/N2)+Ra*Jm*(N1/N2)+J2*Ra);
    C = ((N1/N2)*(Bm)/Ki)+Kb;
    
    num = [1];
    den = [1 B/A C/A 0];
    FT = tf(num , den)
end
