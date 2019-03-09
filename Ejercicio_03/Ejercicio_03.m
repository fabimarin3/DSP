%%%%%%%%Ejercicio n�03%%%%%%%%
%%%%Fabiola Mar�n Rivera%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

n = 0:50; % Define la cantidad de muestras
x1 = cos((pi*n)/(2)); % Define la primera funci�n
x2 = cos((pi*n)/(8)); % Define la segunda funci�n
x3 = cos((pi*n)/(4) + (pi)/(3));% Define la tercera funci�n
x4 = cos((2*n)/(pi));% Define la Cuarta funci�n

figure(1)%Para poner la primera figura en el script
subplot(4,1,1); %Para hacer un subplot de 4 funciones, esta es la primera
stem(x1,'g'); %Gr�fica x1
xlabel('Muestras');
ylabel('x1(n)');
title('Funci�n 1');

subplot(4,1,2); %Segunda funci�n
stem(x2,'r'); %Gr�fica x2
xlabel('Muestras');
ylabel('x2(n)');
title('Funci�n 2');

subplot(4,1,3);% Tercera funci�n
stem(x3); %Gr�fica x3
xlabel('Muestras');
ylabel('x3(n)');
title('Funci�n 3');

subplot(4,1,4); %Cuarta funci�n
stem(x4,'k'); %Gr�fica x4
xlabel('Muestras');
ylabel('x4(n)');
title('Funci�n 4');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%Segunda Parte%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

y1= x1+x2;
y2=x1+x2+x3;
y3=x1+x2-x3+(2*x4);

figure(2)%Para poner la segunda figura en el script
subplot(3,1,1); %Para hacer un subplot de 4 funciones, esta es la primera
stem(y1,'g'); %Gr�fica x1
xlabel('Muestras');
ylabel('y1(n)');
title('Funci�n 1');

subplot(3,1,2); %Segunda funci�n
stem(y2,'r'); %Gr�fica x2
xlabel('Muestras');
ylabel('y2(n)');
title('Funci�n 2');

subplot(3,1,3);% Tercera funci�n
stem(y3); %Gr�fica x3
xlabel('Muestras');
ylabel('y3(n)');
title('Funci�n 3');


