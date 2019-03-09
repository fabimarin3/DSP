%%%%%%%%Ejercicio n°03%%%%%%%%
%%%%Fabiola Marín Rivera%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

n = 0:50; % Define la cantidad de muestras
x1 = cos((pi*n)/(2)); % Define la primera función
x2 = cos((pi*n)/(8)); % Define la segunda función
x3 = cos((pi*n)/(4) + (pi)/(3));% Define la tercera función
x4 = cos((2*n)/(pi));% Define la Cuarta función

figure(1)%Para poner la primera figura en el script
subplot(4,1,1); %Para hacer un subplot de 4 funciones, esta es la primera
stem(x1,'g'); %Gráfica x1
xlabel('Muestras');
ylabel('x1(n)');
title('Función 1');

subplot(4,1,2); %Segunda función
stem(x2,'r'); %Gráfica x2
xlabel('Muestras');
ylabel('x2(n)');
title('Función 2');

subplot(4,1,3);% Tercera función
stem(x3); %Gráfica x3
xlabel('Muestras');
ylabel('x3(n)');
title('Función 3');

subplot(4,1,4); %Cuarta función
stem(x4,'k'); %Gráfica x4
xlabel('Muestras');
ylabel('x4(n)');
title('Función 4');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%Segunda Parte%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

y1= x1+x2;
y2=x1+x2+x3;
y3=x1+x2-x3+(2*x4);

figure(2)%Para poner la segunda figura en el script
subplot(3,1,1); %Para hacer un subplot de 4 funciones, esta es la primera
stem(y1,'g'); %Gráfica x1
xlabel('Muestras');
ylabel('y1(n)');
title('Función 1');

subplot(3,1,2); %Segunda función
stem(y2,'r'); %Gráfica x2
xlabel('Muestras');
ylabel('y2(n)');
title('Función 2');

subplot(3,1,3);% Tercera función
stem(y3); %Gráfica x3
xlabel('Muestras');
ylabel('y3(n)');
title('Función 3');


