%%%%%%%%%Prueba del filtro de ranura%%%%%%
close all;
clear all;
clc;

w = []; %Frecuencia angular
magnitud = [];
fase = [];
 

F1 = ranura(10000,20000);
F2 = ranura(7778,20000);
F3 = ranura(8889,20000);
F4 = ranura(6667,20000);

F = F1*F2*F3*F4;

for a=-pi:0.01:pi
        H = subs(F);
        w=[w,a];

        mag = abs(H);

    magnitud=[magnitud, mag];

    fa = angle(H);

    fase=[fase,fa];

    
end
figure(1)
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




