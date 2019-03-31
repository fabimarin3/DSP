%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%Función para el problema 5%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Frecuencia de la señal = fo
%Frecuencia de muesttreo =fs
%Amplitud = A
%Fase = fase
%Tiempo de inicio = Ti
%Tiempo final = Tf

function Funcion= s(fo,fs,A,fase,Ti,Tf)

n = (Ti/fs):0.001:(Tf/fs);

Funcion = A*sin(2*pi*(fo)*(n)+fase);

end
