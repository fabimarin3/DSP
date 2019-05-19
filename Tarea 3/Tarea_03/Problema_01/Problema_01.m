%%%%%%%% Problema n°1 %%%%%%%%
%Fabiola Marín R.
%Gustavo Villalobos G.
%Diego Cordero R.
close all;
clear all;
clc;

fo = 30;
w = 0:0.1:2*pi*fo; %Frecuencia angular

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%Diagrama 1%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

H1 = (1+cos(w)+i*sin(w))/2%Función de transferencia 1

Mag1 = abs(H1)%Respuesta en magnitud
Fase1 = angle(H1)%Respuesta en fase


figure(1)%Gráfica H1
subplot(2,1,1)
plot(w,Mag1,'b','LineWidth',1);
title('Magnitud Diagrama 1');
xlabel('Frecuencia')
ylabel('Respuesta en Magnitud')
axis([0 100 -0.5 1.5])

subplot(2,1,2)
plot(w,Fase1,'b','LineWidth',1);
title('Fase Diagrama 1');
xlabel('Frecuencia')
ylabel('Respuesta en Fase')
axis([0 50 -5 5])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%Diagrama 2%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

H2 =(cos(w)-1-(sin(w)*i))/2 %Función de transferencia 2

Mag2 = abs(H2)%Respuesta en magnitud
Fase2 = angle(H2)%Respuesta en fase

figure(2)%Gráfica
subplot(2,1,1)
plot(w,Mag2,'k','LineWidth',1);
title('Magnitud Diagrama 2');
xlabel('Frecuencia')
ylabel('Respuesta en Magnitud')
axis([0 100 -0.5 1.5])

subplot(2,1,2)
plot(w,Fase2,'k','LineWidth',1);
title('Fase Diagrama 2');
xlabel('Frecuencia')
ylabel('Respuesta en Fase')
axis([0 50 -5 5])
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%Diagrama 3%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%

A = 1 +3*cos(w)+3*cos(2*w) + cos(3*w);
B = 3*sin(w) + 3*sin(2*w) + sin(3*w);

H3 = (A-i*B)/8; %Función de transferencia 3


Mag3 = abs(H3);%Respuesta en magnitud 
Fase3 = angle(H3);%Respuesta en fase

figure(3)%Gráfica
subplot(2,1,1)
plot(w,Mag3,'r','LineWidth',1);
title('Magnitud Diagrama 3');
xlabel('Frecuencia')
ylabel('Respuesta en Magnitud')
axis([0 100 -0.5 1.5])

subplot(2,1,2)
plot(w,Fase3,'r','LineWidth',1);
title('Fase Diagrama 1');
xlabel('Frecuencia')
ylabel('Respuesta en Fase')
axis([0 50 -5 5])




