%%%%%%%%Ejercicio n°02%%%%%%%%
%Fabiola Marín R.
%Gustavo Villalobos G.
%Diego Cordero R.

close all
clear all
clc

n_x = [0,1,2,3];
n_h = [-1,0,1,2];

l_x = length(n_x);
l_h = length(n_h);

k_i = n_x(1);
k_f = n_x(l_x);

l_i = n_h(1);
l_f = n_h(l_h); 

N_max = k_f+l_f;
N_min = k_i+l_i;

Y = [N_min:N_max]

            