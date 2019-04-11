%%%%%%%%Ejercicio n�02%%%%%%%%
%Fabiola Mar�n R.
%Gustavo Villalobos G.
%Diego Cordero R.
%Correlaci�n

function [r,n_y] = Correlacion(x,n_x,y,n_y)
l_nx = length(n_x);
l_nh = length(n_y);
k_i = n_x(1);
k_f = n_x(l_nx);
l_i = n_y(1);
l_f = n_y(l_nh);

m=length(x); %Cantidad de muestras de x(n)
n=length(y); %Cantidad de muestras de h(n)

A= flip(y);

X=[x,zeros(1,n)]; %A�ade a x(n) n cantidad de ceros, donde n es la cantidad de muestras de h(n)
H=[A,zeros(1,m)]; %A�ade a h(n) m cantidad de ceros, donde m es la cantidad de muestras de x(n)

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
stem(Muestras,Y,'k','LineWidth',1.5)
xlabel('n')
ylabel('r_{xy}(n)')
title('Correlaci�n')

end



