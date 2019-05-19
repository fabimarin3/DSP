%%%%%%%% Problema n°07 %%%%%%%%
%Fabiola Marín R.
%Gustavo Villalobos G.
%Diego Cordero R.
close all;
clear all;
clc;

w = []; %Frecuencia angular
magnitud = [];% Arreglo para la magnitud
fase = [];%Arreglo para la fase
 

F1 = ranura(10000,20000);%Filtro para la Frecuencia 1 a bloqueas
F2 = ranura(7778,20000);%Filtro para la Filtro para laFrecuencia 2 a bloqueas
F3 = ranura(8889,20000);%Filtro para la Frecuencia 3 a bloqueas
F4 = ranura(6667,20000);%Filtro para la Frecuencia 4 a bloqueas

F = F1*F2*F3*F4;%Multiplicación de todos los filtros

for a=-pi:0.01:pi %Frecuencias para evaluar
        H = subs(F);%Sustitución de F para los valores de a
        w=[w,a];

        mag = abs(H);%Magnitud

    magnitud=[magnitud, mag];

    fa = angle(H);%Fase

    fase=[fase,fa];

    
end
figure(1) %Gráfica
subplot(2,1,1)
plot(w,magnitud,'b','LineWidth',1);
hold on
title('Respuesta en Magnitud');
xlabel('Frecuencia')
ylabel('Magnitud')


subplot(2,1,2)
plot(w,fase,'b','LineWidth',1);
title('Respuesta de Fase');
xlabel('Frecuencia')
ylabel('Fase')




