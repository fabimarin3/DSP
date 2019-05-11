%%%%%%%% Problema n°1 %%%%%%%%
%Fabiola Marín R.
%Gustavo Villalobos G.
%Diego Cordero R.
close all;
clear all;
clc;

fo = 60;
w = 0:2*pi*fo; %Frecuencia angular

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%Diagrama 1%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Mag1 = sqrt((1+cos(w)).^2+(sin(w)).^2)/2
Fase1 = atan((-sin(w))/(1+cos(w)))

figure(1)
subplot(2,1,1)
plot(w,Mag1);
title('Magnitud Diagrama 1');
xlabel('Frecuencia (\omega)')
ylabel('Respuesta en Magnitud')

subplot(2,1,2)
plot(w,Fase1);
title('Fase Diagrama 1');
xlabel('Frecuencia (\omega)')
ylabel('Respuesta en Fase')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%Diagrama 2%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Mag2 = sqrt((cos(w)-1).^2+(sin(w)).^2)/2
Fase2 = atan((-sin(w))/(cos(w)-1))

figure(2)
subplot(2,1,1)
plot(w,Mag2);
title('Magnitud Diagrama 2');
xlabel('Frecuencia (\omega)')
ylabel('Respuesta en Magnitud')

subplot(2,1,2)
plot(w,Fase2);
title('Fase Diagrama 2');
xlabel('Frecuencia (\omega)')
ylabel('Respuesta en Fase')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%Diagrama 3%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

A = 1 +3*cos(w)+3*cos(2*w) + cos(3*w);
B = 3*sin(w)+3*sin(2*w)+3*sin(3*w);

Mag3 = sqrt((A).^2+(B.^2))
Fase3 = atan((-B)/(A))

figure(3)
subplot(2,1,1)
plot(w,Mag3);
title('Magnitud Diagrama 3');
xlabel('Frecuencia (\omega)')
ylabel('Respuesta en Magnitud')

subplot(2,1,2)
plot(w,Fase3);
title('Fase Diagrama 1');
xlabel('Frecuencia (\omega)')
ylabel('Respuesta en Fase')




