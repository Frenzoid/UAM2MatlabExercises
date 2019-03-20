% Ejercicio 10.

f = @(x,y,z) x.^2 * sin(z);

dblquad(f, 0, sqrt(5), 0, 2 * pi, 0, atan(2))
