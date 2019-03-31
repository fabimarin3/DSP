%%%%%%%%Ejercicio n°2%%%%%%%%
%%%%Fabiola Marín Rivera%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% fs1=1; % Defino los pasos 
% tp=0:fs1:36;%Defino t1 para que vaya en los pasos de fs1
% figure(1)%Comando para poner varias figuras
% xp= exp(cos((40*pi*tp)/(9)));%Función que quiero graficar, en términos del tiempo t1
% plot(xp);%Comando de gráfica x1
% xlabel('Tiempo');%Título
% ylabel('xp(t)');%Nombre del eje y
% title('Coseno en función del tiempo');%Nombre del eje x

clear all;
close all
clc;

t1=0:0.001:2;%Defino t2 para que sea de 0 a 2, este va  en pasos de 1
x1= exp(cos((40*pi*t1)/(9)));%Función que quiero graficar, en términos del tiempo t2
n=0:36; %Defino el intervalo de la función
x2 = exp(cos((40*pi*n)/(9))); %Defino la función

figure(2);
subplot(2,1,1);
plot(x1,'g'); %Gráfica x2
xlabel('Tiempo');
ylabel('x1(t)');
title('Coseno en función del tiempo, continuo');

subplot(2,1,2); 
stem(x2,'r');%Discretizo y grafico la función x3
xlabel('Muestras');
ylabel('x2(n)');
title('Coseno en función del tiempo, discreto');


