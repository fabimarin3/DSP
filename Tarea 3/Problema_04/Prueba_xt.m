close all;
clear all;
clc;

w = []; %Frecuencia angular
magnitud = [];
fase = [];
a = sym('a');
%a=-pi:0.01:pi

n = -1:0.0001:1
x = 2 + cos(100*pi*n + pi) + sin(120*pi*n - pi/2);

Xz = (2.*(1-exp(-1i.*a)).*(1+exp(-1i.*a)))/(1-2.*exp(-1i.*a)+exp(-2.*1i.*a));
Hz = ranura1(60,300);
Y = (Xz*Hz);

for a=-pi:0.01:pi;

        H = subs(Y);
        w=[w,a];

        mag = abs(H);

    magnitud=[magnitud, mag];

    fa = angle(H);

    fase=[fase,fa];
    
end
figure(1)

subplot(3,1,1)
plot(n,x);
axis([-.2 .2  -1 5]);
hold on
title('Señal que se desea filtrar');
xlabel('x(t)')
ylabel('Muestras(n)')


subplot(3,1,2)
plot(w,magnitud,'b','LineWidth',1);
axis([-.2 .2  -1 5]);
hold on
title('Respuesta en Magnitud');
xlabel('Frecuencia')
ylabel('Magnitud')

subplot(3,1,3)
plot(w,fase,'b','LineWidth',1);
axis([-.2 .2  -5 5]);
title('Respuesta de Fase');
xlabel('Frecuencia')
ylabel('Fase')