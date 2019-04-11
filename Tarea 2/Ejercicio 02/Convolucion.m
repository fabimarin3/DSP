%%%%%%%%Ejercicio n°02%%%%%%%%
%Convolucion
%Fabiola Marín R.
%Gustavo Villalobos G.
%Diego Cordero R.

%Entradas: Muestras de x(n), número de muestras, n de x, Muestras de h(n),
%número de muestras, n de h
%Salidas: Convolucion y número de muestras de la convolucion. 

function [y,n_y] = Convolucion(x,n_x,h,n_h)
l_nx = length(n_x);%Me da el largo de las muestras n de y
l_nh = length(n_h);%Me da el largo de las muestras n de h
k_i = n_x(1); %Para calcular el valor inicial de las muestras n de x
k_f = n_x(l_nx); %Para calcular el valor final de las muestras n de x
l_i = n_h(1);%Para calcular el valor inicial de las muestras n de h
l_f = n_h(l_nh); %Para calcular el valor final de las muestras n de h

m=length(x); %Cantidad de muestras de x(n)
n=length(h); %Cantidad de muestras de h(n)

X=[x,zeros(1,n)]; %Agrega a x(n) n cantidad de ceros, donde n es la cantidad de muestras de h(n)
H=[h,zeros(1,m)]; %Agrega a h(n) m cantidad de ceros, donde m es la cantidad de muestras de x(n)

for i=1:n+m-1 %Para i que va de 1 a n+m-1,me establece el largo de y(n)
Y(i)=0; %y(n) inicia en cero
for j=1:m %Para j que va de 1 a la cantidad de muestras de x(n)
if(i-j+1>0) %Si i - j +1 es mayor que cero
Y(i)=Y(i)+X(j)*H(i-j+1); %A y(n) sumele la matriz x(n) llena con los ceros multiplicada por la matriz h(n) 
else
end
end
end
Y; %Muestra la convolucion
N_max = k_f+l_f; %Calcula el valor máximo de el n de y
N_min = k_i+l_i; %Calcula el valor mínimo de el n de y
Muestras = [N_min:N_max]; %Crea el vector con las posiciones de y(n)
%%%%Grafica%%%%%
figure(1)
subplot(3,1,1)
stem(n_x,x,'r','LineWidth',1.5)
xlabel('n')
ylabel('x(n)')
title('x(n)')

subplot(3,1,2)
stem(n_h,h,'g','LineWidth',1.5)
xlabel('n')
ylabel('h(n)')
title('h(n)')

subplot(3,1,3)
stem(Muestras,Y,'p','LineWidth',1.5)
xlabel('n')
ylabel('y(n)')
title('Convolución x(n)*h(n)')
end

