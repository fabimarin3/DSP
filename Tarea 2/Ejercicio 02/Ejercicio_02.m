%%%%%%%%Ejercicio n°02%%%%%%%%
%Fabiola Marín R.
%Gustavo Villalobos G.
%Diego Cordero R.

close all
clear all
clc

%Convolucion

x=input('Digite las muestras de x(n):'); %Insertar los valores de las muestras de x(n)
h=input('Digite las muestras de h(n):'); %Insertar los valores de las muestras de h(n)
m=length(x); %Cantidad de muestras de x(n)
n=length(h); %Cantidad de muestras de h(n)
X=[x,zeros(1,n)]; %Añade a x(n) n cantidad de ceros, donde n es la cantidad de muestras de h(n)
H=[h,zeros(1,m)]; %Añade a h(n) m cantidad de ceros, donde m es la cantidad de muestras de x(n)
for i=1:n+m-1 %Para i que va de 1 a n+m-1, el largo de y(n)
Y(i)=0; %y(n) inicia en cero
for j=1:m %Para j que va de 1 a la cantidad de muestras de x(n)
if(i-j+1>0) %Si i - j +1 es mayor que cero
Y(i)=Y(i)+X(j)*H(i-j+1); %A y(n) sumele la matriz x(n) llena con los ceros multiplicada por la matirz h(n) 
else
end
end
end


Convolucion = Y

% %Correlacion

% n_h = flip (h);
% N_H = [n_h,zeros(1,m)];

% for i=1:n+m-1 %Para i que va de 1 a n+m-1, el largo de y(n)
% R(i)=0; %y(n) inicia en cero
% for j=1:m %Para j que va de 1 a la cantidad de muestras de x(n)
% if(i-j+1>0) %Si i - j +1 es mayor que cero
% R(i)=R(i)+X(j)*N_H(i-j+1); %A y(n) sumele la matriz x(n) llena con los ceros multiplicada por la matriz h(n) 
% else
% end
% end
% end
% Correlacion = R




