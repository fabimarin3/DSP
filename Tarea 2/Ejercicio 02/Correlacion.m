function [ y,n_y ] = Correlacion(x,n_x,h,n_h)
A= flip(h);%Invierte todas las muestras de tal manera que la correlaci�n se empiece desde la �ltima muestra como tiene que ser. 
Convolucion(x,n_x,A,n_h);
ylabel('r_{xy}(n)')
title('Correlaci�n')
end

