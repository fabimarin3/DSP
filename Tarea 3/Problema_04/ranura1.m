function H = ranura(Fo,Fs)
fo =  Fo/Fs; % Frecuencia normalizada
wo = (2*pi*fo); % Frecuencia de los polos y ceros
a = sym('a');
r = 0.9;
bo = 0.5;

z1 = exp(i*wo); 
z2 = exp(-i*wo);
p1 = r*exp(i*-wo);
p2 = r*exp(-i*-wo);


 num = (1-z1*exp(i*-a))*(1-z2*exp(i*-a));
 den = (1-p1*exp(i*-a))*(1-p2*exp(i*-a));
 
 H = bo*(num/den)

end

