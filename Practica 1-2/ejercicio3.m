
% Ejercicio 3.

p = input('Dime el precio del productainer: ');
c = input('Dime la cantidad: ');
func = @(precio, cantidad) (precio * 0.21 + precio) * cantidad;

fprintf('El precio del producto es: %.2f \n', func(p,c));

clear;
