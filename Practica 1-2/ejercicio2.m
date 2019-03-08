% Ejercicio 2.

precio = input('Dime el precio del productainer: ');
cantidad = input('Dime la cantidad: ');

fprintf('El precio del producto es: %.2f \n', ((precio * 0.21 + precio) * cantidad));

clear;
