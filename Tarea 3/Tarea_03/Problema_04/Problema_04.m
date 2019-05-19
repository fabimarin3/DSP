%%%%%%%% Problema n°04 Filtro %%%%%%%%
%Fabiola Marín R.
%Gustavo Villalobos G.
%Diego Cordero R.
close all;
clear all;
clc;

w = []; %Arreglopara la frecuencia angular
magnitud = []; %Arreglo para la magnitud de cada frecuencias angular
fase = []; %Arreglo para la fase de cada frecuencias angular
a = -pi:0.01:pi;%Los valores de frecuencias en los que se va a evaluar

n = -1:0.0001:1%Valores de muestreo para x(n)
x = 2 + cos(100*pi*n + pi) + sin(120*pi*n - pi/2);%señal x(n)

X = (2.*(1-exp(-1i.*a)).*(1+exp(-1i.*a)))/(1-2.*exp(-1i.*a)+exp(-2.*1i.*a));%Transformada Z de x(n)
Hz = ranura1(60,300);%Filtro ranura


for a=-pi:0.01:pi;
        Y = Hz*X; %Salida de la señal aplicada al filtro
        H = subs(Y) % Sustitución de Y para darle valores a 'a'
        w=[w,a]; %Arreglo que se llena con los valores de a

        mag = abs(H); %Magnitud de H

    magnitud=[magnitud, mag];%LLena el arreglo de magnitud

    fa = angle(H); %Fase de H

    fase=[fase,fa]; %LLena el arreglo de fase
    
end


figure(1) %Gráfica de la señal x(n)
plot(n,x);
axis([-.2 .2  -1 5]);
hold on
title('Señal que se desea filtrar');
xlabel('x(t)')
ylabel('Muestras(n)')

figure(2)%Gráfica de la respuesta de magnitud y fase.z
subplot(2,1,1)
plot(w,magnitud,'b','LineWidth',1);
axis([-.2 .2  0 0.00001])
hold on
title('Respuesta en Magnitud');
xlabel('Frecuencia')
ylabel('Magnitud')

subplot(2,1,2)
plot(w,fase,'b','LineWidth',1);
axis([-.2 .2  -1.7 -1.5]);
title('Respuesta de Fase');
%xlabel('Frecuencia')
ylabel('Fase')

