%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%Prueba de gráfico de magnitud y fase%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all;
clear all;
clc;

Fo = 60; %Frecuencia que se desea bloquear 
Fs = 300; %Frecuencia de muestreo
fo =  Fo/Fs; % Frecuencia normalizada
wo = (2*pi*fo); % Frecuencia de los polos y ceros
%w = 0:0.1:2*pi*fo; %Frecuencia angular
r = 1;


z1 = r*exp(i*wo);
z2 = r*exp(i*wo);
p1 = r*exp(i*-wo);
p2 = r*exp(i*-wo);


for w = 0:2*pi*5;
    
num = (1-z1*(cos(w)-i*sin(w)))*(1-z2*(cos(2*w)-i*sin(2*w)));
den = (1-p1*(cos(w)-i*sin(w)))*(1-p2*(cos(2*w)-i*sin(2*w)));
H = num/den
mag = abs(H)
fase = angle(H)

figure(1)
subplot(2,1,1)
plot(w,mag,'b','LineWidth',1);
hold on
title('Magnitud Diagrama 1');
xlabel('Frecuencia')
axis([0 100 -0.5 1.5])
ylabel('Respuesta en Magnitud')

subplot(2,1,2)
plot(w,fase,'b','LineWidth',1);
title('Fase Diagrama 1');
xlabel('Frecuencia')
ylabel('Respuesta en Fase')
axis([0 50 -5 5])

end


