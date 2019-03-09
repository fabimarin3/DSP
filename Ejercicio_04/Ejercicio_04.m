%%%%%%%%Ejercicio n°04%%%%%%%%
%%%%Fabiola Marín Rivera%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


n = linspace(-10,10);
f = @(n) 3*n-n.^2-5*n.^3;
xp = (f(n)+f(-n))/2;
xi = (f(n)-f(-n))/2;
xt = xp +xi;

f(n);


figure(1)

plot(n,f(n));
axis([-10 10 -10 10])
legend('función normal');


figure(2) 
stem(n,xp);
axis([-10 10 -10 10])
legend('función par')
 

figure(3)
stem(n,xi);
axis([-10 10 -10 10])
legend('función impar')

figure (4)
stem(n,xt);
axis([-10 10 -10 10])
legend('función sima de par impar')










% t = linspace(0,2*pi) ;
% f = @(t) sin(t) ;
% figure(1)
% hold on
% % f(t)
% y1 = plot(t,f(t),'r') ;
% %f(-t) 
% y2 = plot(t,f(-t),'b') ;
% legend('f(t)','f(-t)')

