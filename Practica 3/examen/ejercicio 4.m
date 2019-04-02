% Ejercicio 4

% Como todos ya sabemos que L = sin(sqrt(1 + diff(x)^2), a, b) dx, calcula la longitud de la curva y = nthroot(x^2,3) para
%   el intervalo 0 < x < 4;


syms x;

ydiff = x^(1/3);

f = @(x) sqrt(1 + ydiff^2);

double(int(f, x, 0, 4))
