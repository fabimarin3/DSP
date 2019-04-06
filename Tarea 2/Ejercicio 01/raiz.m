%Ejercicio 1
%Fabiola Marín Rivera

function r = raiz(indice,radicando)
    digits(9);
    y_anterior = 10;
    error = 1;
    n=0;
    x = [n];
    y = [y_anterior];
    while error > 0.0001
        y_actual = y_anterior -(((y_anterior^indice)-radicando)/(indice*(y_anterior^(indice-1))));
        
        n= n + 1;
        x = [x;n];
        y = [y;y_actual];
        
        error = abs(y_actual-y_anterior)/y_actual;
        r = y_actual;
        y_anterior = y_actual;
    end
    stem(x,y);
    r = vpa(r);
end