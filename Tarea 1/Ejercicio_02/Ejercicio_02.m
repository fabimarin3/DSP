%%%%%%%%Ejercicio n�2%%%%%%%%
%%%%Fabiola Mar�n Rivera%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% fs1=1; % Defino los pasos 
% tp=0:fs1:36;%Defino t1 para que vaya en los pasos de fs1
% figure(1)%Comando para poner varias figuras
% xp= exp(cos((40*pi*tp)/(9)));%Funci�n que quiero graficar, en t�rminos del tiempo t1
% plot(xp);%Comando de gr�fica x1
% xlabel('Tiempo');%T�tulo
% ylabel('xp(t)');%Nombre del eje y
% title('Coseno en funci�n del tiempo');%Nombre del eje x

clear all;
close all
clc;

t1=0:0.001:2;%Defino t2 para que sea de 0 a 2, este va  en pasos de 1
x1= exp(cos((40*pi*t1)/(9)));%Funci�n que quiero graficar, en t�rminos del tiempo t2
n=0:36; %Defino el intervalo de la funci�n
x2 = exp(cos((40*pi*n)/(9))); %Defino la funci�n

figure(2);
subplot(2,1,1);
plot(x1,'g'); %Gr�fica x2
xlabel('Tiempo');
ylabel('x1(t)');
title('Coseno en funci�n del tiempo, continuo');

subplot(2,1,2); 
stem(x2,'r');%Discretizo y grafico la funci�n x3
xlabel('Muestras');
ylabel('x2(n)');
title('Coseno en funci�n del tiempo, discreto');


