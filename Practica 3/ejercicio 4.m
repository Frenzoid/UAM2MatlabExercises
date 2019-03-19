% Ejercicio 4.

syms x;

f = x;
g = (x + 1)^2;

int(f + g, 0, 2) % 1era operacion.
disp(int(f,0,2) + int(g,0,2)) % 2nda operacion.

% Dan el mismo resultado, porque al final son operaciones equivalentes.
