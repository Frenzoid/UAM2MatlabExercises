% Ejercicio 6.

syms x y;

f(x) = (x-y-x*y)/(x+y);

disp(limit(limit(f, x, 0), y, 0)); % Limite doble 1 (primero de x y despues de y).
disp(limit(limit(f, y, 0), x, 0)); % Limite doble 2 (primero de y y despues de x).
 
