% Ejercicio 9.

f = @(x,y) (x.^2)/(2*y);

dblquad(f, 1, 2, 1, 4)
