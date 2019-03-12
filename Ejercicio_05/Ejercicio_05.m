%%%%%%%%Ejercicio n�05%%%%%%%%
%%%%Fabiola Mar�n Rivera%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Definici�n de los par�metros
Fo = 500; %Frecuencia de la se�al
Fase = 1 %Fase de la se�al 
A = 10; %Amplitud de la se�al
Fs = 4000; % Frecuencia de muestreo, 4k
Ti = 0; % Tiempo de inicio 
Tf = 0.01;% Tiempo final, 1ms
T = Ti:0.0000002:Tf;

%Definici�n de n, que va a ir desde el tiempo inicial al final, en pasos de
%1/Fs
n = Ti:0.000001:Tf % Intervalo de muestre de 1/Fs (f de muestreo)

%Definici�n la funci�n

st = A*sin(2*pi*T*Fo + Fase);
sn = A*sin(2*pi*(Fo/Fs)*n + Fase);

figure(1);
%subplot(2,1,1);
plot(n,sn);
axis([0 0.02 8.4 8.5])
xlabel('Muestras');%T�tulo
ylabel('s(n)');%Nombre del eje y
title('Funci�n s(n)');%Nombre del eje x

figure(2)
%subplot(2,1,2);
plot(T,st);
axis([0 0.01 -15 15])%Con esto especifico como quiero que se vean los ejes.
xlabel('Tiempo');%T�tulo
ylabel('s(t)');%Nombre del eje y
title('Funci�n s(t)');%Nombre del eje x



