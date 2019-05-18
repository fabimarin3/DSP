function filtro = ranura(Fo,Fs)
fo =  Fo/Fs; % Frecuencia normalizada
wo = (2*pi*fo); % Frecuencia de los polos y ceros
w = []; %Frecuencia angular
magnitud = [];
fase = [];
r = 0.9;
bo = 0.5

z1 = exp(i*wo) 
z2 = exp(-i*wo);
p1 = r*exp(i*-wo);
p2 = r*exp(-i*-wo);


for a=-pi:0.01:pi
   
        w=[w,a];
num = (1-z1*exp(i*-a))*(1-z2*exp(i*-a))
den = (1-p1*exp(i*-a))*(1-p2*exp(i*-a))

H = bo*(num/den)
% mag = abs(H);
% 
% magnitud=[magnitud, mag];
% 
% fa = angle(H);
% 
% fase=[fase,fa];

end


end

