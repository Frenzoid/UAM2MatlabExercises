% Ejercicio 6.

syms x;
func6 = @(a,b,c) a + b * x + c * x ^ 2;
ezplot(func6(2,4,3));

clear;