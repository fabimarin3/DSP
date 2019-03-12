%%%%%%%%Ejercicio n°05%%%%%%%%
%%%%Fabiola Marín Rivera%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Definición de los parámetros
Fo = 500; %Frecuencia de la señal
Fase = 1 %Fase de la señal 
A = 10; %Amplitud de la señal
Fs = 4000; % Frecuencia de muestreo, 4k
Ti = 0; % Tiempo de inicio 
Tf = 0.01;% Tiempo final, 1ms
T = Ti:0.0000002:Tf;

%Definición de n, que va a ir desde el tiempo inicial al final, en pasos de
%1/Fs
n = Ti:0.000001:Tf % Intervalo de muestre de 1/Fs (f de muestreo)

%Definición la función

st = A*sin(2*pi*T*Fo + Fase);
sn = A*sin(2*pi*(Fo/Fs)*n + Fase);

figure(1);
%subplot(2,1,1);
plot(n,sn);
axis([0 0.02 8.4 8.5])
xlabel('Muestras');%Título
ylabel('s(n)');%Nombre del eje y
title('Función s(n)');%Nombre del eje x

figure(2)
%subplot(2,1,2);
plot(T,st);
axis([0 0.01 -15 15])%Con esto especifico como quiero que se vean los ejes.
xlabel('Tiempo');%Título
ylabel('s(t)');%Nombre del eje y
title('Función s(t)');%Nombre del eje x



