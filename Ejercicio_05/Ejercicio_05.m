%%%%%%%%Ejercicio n�05%%%%%%%%
%%%%Fabiola Mar�n Rivera%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Definici�n de los par�metros
Fo = 500; %Frecuencia de la se�al
Fase = 1 %Fase de la se�al 
A = 10 %Amplitud de la se�al
Fs = 4000 % Frecuencia de muestreo, 4k
Ti = 0 % Tiempo de inicio 
Tf = 0.01% Tiempo final, 1ms

%Definici�n de n, que va a ir desde el tiempo inicial al final, en pasos de
%1/Fs
n = Ti:1/Fs:Tf % Intervalo de muestre de 1/Fs (f de muestreo)

%Definici�n la funci�n