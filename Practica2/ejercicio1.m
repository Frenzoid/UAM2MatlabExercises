% Ejercicio 1.

syms x;
f(x) = (x^2 - 3) / (3 * x^5 + 5 * x);

ezplot(f);
disp(limit(f, x, 3));
