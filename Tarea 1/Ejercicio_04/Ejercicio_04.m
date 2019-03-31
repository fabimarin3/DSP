%%%%%%%%Ejercicio n°04%%%%%%%%
%%%%Fabiola Marín Rivera%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


n = linspace(-10,10);
f = @(n) 10*cos(2*pi*n);
xp = (f(n)+f(-n))/2;
xi = (f(n)-f(-n))/2;
xt = xp +xi;

f(n);


figure(1)

plot(n,f(n));
axis([-10 10 -10 10])
legend('función normal');


figure(2)

subplot(3,1,1);
stem(n,xp);
axis([-10 10 -10 10])%
xlabel('Muestras');
ylabel('xp(n)');
title('Componente par de x(n)');
 
subplot(3,1,2);
stem(n,xi);
axis([-10 10 -10 10])
xlabel('Muestras');
ylabel('x(n)');
title('Componente impar de x(n)');

subplot(3,1,3);
stem(n,xt);
axis([-10 10 -10 10])
xlabel('Muestras');
ylabel('xp(n)');
title('Suma de las componentes par e impar de x(n)');






