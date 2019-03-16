%%%%%%%%Ejercicio n°05%%%%%%%%
%%%%Fabiola Marín Rivera%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function x = tono(frecuencia)

f = frecuencia

while f < 22000

    fs=44000;  % sampling frequency
    duration=1;
    values=0:1/fs:duration;
    a=cos(2*pi*f*values);
    sound(a,44000);
    pause(duration);
    f = f + frecuencia;

end 

