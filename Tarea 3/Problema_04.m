%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%Prueba de gráfico de magnitud y fase%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all;
clear all;
clc;

t = -50:50;
y = 1+cos(50*t)-i*sin(50*t);
mag = abs(y)
fase = angle(y)

figure(1);
subplot(2,1,1);
plot(t,mag);
title('Magnitud')

subplot(2,1,2);
plot(t,fase);
title('Fase')

a = sqrt((1+cos(50*t)).^2 + sin(59*t).^2);
b = atan((-sin(50*t))/(1+ cos(50*t)))

figure(2);
subplot(1,2,1);
plot(t,a);
title('Magnitud')

subplot(1,2,2);
plot(t,b);
title('Fase')

