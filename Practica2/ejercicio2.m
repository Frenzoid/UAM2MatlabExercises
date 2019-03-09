% Ejercicio 2.

syms x y;
f(x,y) = (x * y) / (x^2 + y^2)

ezplot(f);

disp(limit(limit(f, x, 0), y, 0));
disp(limit(limit(f, y, 0), x, 0));
