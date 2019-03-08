% Ejercicio 7.

syms y x;
g = @(a,b,c) a * y ^ 2 + b * x * y + c * x ^ 2;
ezsurf(g(17,9,11));
