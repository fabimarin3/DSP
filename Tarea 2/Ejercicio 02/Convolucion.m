%%%%%%%%Ejercicio n�02%%%%%%%%
%Convolucion
%Fabiola Mar�n R.
%Gustavo Villalobos G.
%Diego Cordero R.

%Entradas: Muestras de x(n), n�mero de muestras, n de x, Muestras de h(n),
%n�mero de muestras, n de h
%Salidas: Convolucion y n�mero de muestras de la convolucion. 

function [y,n_y] = Convolucion(x,n_x,h,n_h)
l_nx = length(n_x);
l_nh = length(n_h);
k_i = n_x(1);
k_f = n_x(l_nx);
l_i = n_h(1);
l_f = n_h(l_nh);

m=length(x); %Cantidad de muestras de x(n)
n=length(h); %Cantidad de muestras de h(n)

X=[x,zeros(1,n)]; %A�ade a x(n) n cantidad de ceros, donde n es la cantidad de muestras de h(n)
H=[h,zeros(1,m)]; %A�ade a h(n) m cantidad de ceros, donde m es la cantidad de muestras de x(n)

for i=1:n+m-1 %Para i que va de 1 a n+m-1, el largo de y(n)
Y(i)=0; %y(n) inicia en cero
for j=1:m %Para j que va de 1 a la cantidad de muestras de x(n)
if(i-j+1>0) %Si i - j +1 es mayor que cero
Y(i)=Y(i)+X(j)*H(i-j+1); %A y(n) sumele la matriz x(n) llena con los ceros multiplicada por la matirz h(n) 
else
end
end
end
Y;
N_max = k_f+l_f;
N_min = k_i+l_i;
Muestras = [N_min:N_max];
stem(Muestras,Y,'p','LineWidth',1.5)
xlabel('n')
ylabel('y(n)')
title('Convoluci�n x(n)*h(n)')
end

