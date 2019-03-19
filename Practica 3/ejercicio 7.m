% Ejercicio 7.

syms x;

f = cos(x);

int(f, -pi, pi) % Operacion 1.
int(f,-pi, 0) + int(f, 0, pi) % Operacion 2.

% Dan el mismo resultado porque son operaciones identicas.
