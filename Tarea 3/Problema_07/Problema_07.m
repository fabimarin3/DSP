z1 = exp(i*wo) 
z2 = exp(-i*wo);
p1 = r*exp(i*-wo);
p2 = r*exp(-i*-wo);


for a=-pi:0.01:pi
   
w=[w,a];
num = (1-z1*exp(i*-a))*(1-z2*exp(i*-a))
den = (1-p1*exp(i*-a))*(1-p2*exp(i*-a))

H = bo*(num/den);
mag = abs(H);

magnitud=[magnitud, mag];

fa = angle(H);

fase=[fase,fa];

end

figure(1)
subplot(2,1,1)
plot(w,magnitud,'b','LineWidth',1);
hold on
title('Magnitud Diagrama 1');
xlabel('Frecuencia')
ylabel('Respuesta en Magnitud')

subplot(2,1,2)
plot(w,fase,'b','LineWidth',1);
title('Fase Diagrama 1');
xlabel('Frecuencia')
ylabel('Respuesta en Fase')