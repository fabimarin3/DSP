%%%%%%%% Problema n°07 Filtro %%%%%%%%
%%%%%%%% Problema n°1 %%%%%%%%
%Fabiola Marín R.
%Gustavo Villalobos G.
%Diego Cordero R.

function H = ranura(Fo,Fs)
fo =  Fo/Fs; % Frecuencia normalizada
wo = (2*pi*fo); % Frecuencia de los polos y ceros
a = sym('a');
r = 0.9;
bo = 0.5;

z1 = exp(1i*wo); 
z2 = exp(-1i*wo);
p1 = r*exp(1i*-wo);
p2 = r*exp(-1i*-wo);


 num = (1-z1*exp(1i*-a))*(1-z2*exp(1i*-a));
 den = (1-p1*exp(1i*-a))*(1-p2*exp(1i*-a));
 
 H = bo*(num/den);

end

