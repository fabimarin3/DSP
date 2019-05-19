%%%%%%%%%Prueba del filtro de ranura%%%%%%
close all;
clear all;
clc;

syms n;
syms z;
%z = tf('z');

%%%%%%%%%%%%Ceros y Polos H1%%%%%%%%%%%%%
z11 = sym('z11');%exp(1i*wo1); 
z12 = sym('z12');%exp(-1i*wo1);
p11 = sym('p11');%r*exp(1i*-wo1);
p12 = sym('p12');%r*exp(-1i*-wo1);


%%%%%%%%%%%%Ceros y Polos H2%%%%%%%%%%%%%
z21 = sym('z11');% exp(1i*wo2); 
z22 = sym('z12');%exp(-1i*wo2);
p21 = sym('p11');%r*exp(1i*-wo2);
p22 = sym('p12');%r*exp(-1i*-wo2);

%%%%%%%%%%%%Ceros y Polos H3%%%%%%%%%%%%%
z31 = sym('p32');%exp(1i*wo3); 
z32 = sym('p32');%exp(-1i*wo3);
p31 = sym('p32');%r*exp(1i*-wo3);
p32 = sym('p32');%r*exp(-1i*-wo3);

%%%%%%%%%%%%Ceros y Polos H1%%%%%%%%%%%%%
z41 = sym('p42');%exp(1i*wo4); 
z42 = sym('p42');%exp(-1i*wo4);
p41 = sym('p42');%r*exp(1i*-wo4);
p42 = sym('p42');%r*exp(-1i*-wo4);

num = (1-z.*z11).*(1-z.*z12).*(1-z.*z21).*(1-z.*z22).*(1-z.*z31).*(1-z*z32).*(1-z*z41).*(1-z*z42)


% r = sym('r');
% bo = sym('bo');
% w = sym('w');
% 
% 
% %%%%%%%%%%%Frecuencias para H1 H2 H3 y H4%%%%%%%%%%%%
% wo1 = sym('wo1'); %Frecuencias para H1
% wo2 = sym('wo2');
% wo3 = sym('wo3');
% wo4 = sym('wo4');
% 
% %%%%%%%%%%%Z%%%%%%%%%
% 
% z1 = sym('z1');%exp(-1i*w);
% z2 = sym('z2');%exp(-1i*2*w);
% 
% %%%%%%%%%%%%Ceros y Polos H1%%%%%%%%%%%%%
% z11 = sym('z11');%exp(1i*wo1); 
% z12 = sym('z12');%exp(-1i*wo1);
% p11 = sym('p11');%r*exp(1i*-wo1);
% p12 = sym('p12');%r*exp(-1i*-wo1);
% 
% 
% %%%%%%%%%%%%Ceros y Polos H2%%%%%%%%%%%%%
% z21 = sym('z11');% exp(1i*wo2); 
% z22 = sym('z12');%exp(-1i*wo2);
% p21 = sym('p11');%r*exp(1i*-wo2);
% p22 = sym('p12');%r*exp(-1i*-wo2);
% 
% %%%%%%%%%%%%Ceros y Polos H3%%%%%%%%%%%%%
% z31 = sym('p32');%exp(1i*wo3); 
% z32 = sym('p32');%exp(-1i*wo3);
% p31 = sym('p32');%r*exp(1i*-wo3);
% p32 = sym('p32');%r*exp(-1i*-wo3);
% 
% %%%%%%%%%%%%Ceros y Polos H1%%%%%%%%%%%%%
% z41 = sym('p42');%exp(1i*wo4); 
% z42 = sym('p42');%exp(-1i*wo4);
% p41 = sym('p42');%r*exp(1i*-wo4);
% p42 = sym('p42');%r*exp(-1i*-wo4);
% 
% H1 = ((1-z11*z1)*(1-z12*z2))/((1-p11*z1)*(1-p11*z2));
% H2 = ((1-z21*z1)*(1-z22*z2))/((1-p21*z1)*(1-p22*z2));
% H3 = ((1-z31*z1)*(1-z32*z2))/((1-p31*z1)*(1-p32*z2));
% H4 = ((1-z41*z1)*(1-z42*z2))/((1-p41*z1)*(1-p42*z2));
% 
% 
% num = H1*H2
% 
% 



