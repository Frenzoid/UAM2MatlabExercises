% Ejercicio 6.

syms x;
func6 = @(a,b,c) a + b * x + c * x ^ 2;
ezplot(func6(2,4,3)); % En este caso, usamos ezplot, porque solo hay una icognita (x), y por lo tanto la representación será en 2D.

clear;
