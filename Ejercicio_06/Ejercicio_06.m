%%%%%%%%Ejercicio n�05%%%%%%%%
%%%%Fabiola Mar�n Rivera%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Am=5; %Amplitud de la funci�n, solamente var�a la amplitd, no el tiempo ni la frecuencia del tono
fs=2000;  % Frecuencia de muestreo, varia el paso del muestreo de funci�n por ende el tono cambia 
duration=5; %Me dice hasta cuanto quiero llegar los valores de muestreo
freq=2500; %Frecuencia de la funci�n, varia la forma de la funci�n, el tono 
values=0:1/fs:duration; %Valores para los cuales deseo hacer el muestreo
a=Am*sin(2*pi* freq*values); %Funci�n que quiero hacer sonar
sound(a); %Comando para hacer sonar a 'a'
figure(1)
plot(a);%Grafica de 'a' en funci�n de los valores de muestreo
axis([0 25 0 10]) %Acomodo de los ejes
xlabel('Frecuencia (Hz)')
ylabel('Funci�n')
