%%%%%%%%Ejercicio n°02%%%%%%%%
%Fabiola Marín R.
%Gustavo Villalobos G.
%Diego Cordero R.
%Correlación

function [r,n_h] = Correlacion1(x,n_x,h,n_h)

A= flip(h);%Invierte todas las muestras de tal manera que la correlación se empiece desde la última muestra como tiene que ser. 

l_nx = length(n_x);%Me da el largo de las muestras n de y
l_ny = length(n_h);%Me da el largo de las muestras n de y
k_i = n_x(1); %Para calcular el valor inicial de las muestras n de x
k_f = n_x(l_nx); %Para calcular el valor final de las muestras n de x
l_i = n_h(1);%Para calcular el valor inicial de las muestras n de y
l_f = n_h(l_ny); %Para calcular el valor final de las muestras n de y

m=length(x); %Cantidad de muestras de x(n)
n=length(h); %Cantidad de muestras de y(n)

X=[x,zeros(1,n)]; %Añade a x(n) n cantidad de ceros, donde n es la cantidad de muestras de y(n)
H=[A,zeros(1,m)]; %Añade a h(n) m cantidad de ceros, donde m es la cantidad de muestras de x(n)

for i=1:n+m-1 %Para i que va de 1 a n+m-1, el largo de y(n)
Y(i)=0; %y(n) inicia en cero
for j=1:m %Para j que va de 1 a la cantidad de muestras de x(n)
if(i-j+1>0) %Si i - j +1 es mayor que cero
Y(i)=Y(i)+X(j)*H(i-j+1); %A y(n) sumele la matriz x(n) llena con los ceros multiplicada por la matirz h(n) 
else
end
end
end
Y
N_max = (k_f-l_i);
N_min = (k_i- l_f);
Muestras = [N_min:N_max];

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
ylabel('y(n)')
title('y(n)')

subplot(3,1,3)
stem(Muestras,Y,'p','LineWidth',1.5)
xlabel('n')
ylabel('y(n)')
title('Correlación r_{xy}(n)')

end




