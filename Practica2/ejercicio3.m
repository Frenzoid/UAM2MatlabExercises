% Ejercicio 3.

syms x h;
f = (log(x + h) - log(x)) / h;

disp(limit(f, h, 0));
