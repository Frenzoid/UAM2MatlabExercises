% Ejercicio 5.

syms x;

f = sin(x);
k = 5;

int(k * f, -pi/2, pi) % Operacion 1.
int(f, pi/2, pi) % Operacion 2.

% Como la integral de f entre esos 2 valores da 1, la integral de f entre
% esos 2 valores por 5 da 5.
