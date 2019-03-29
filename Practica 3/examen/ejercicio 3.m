% Ejercicio 3.

% Utilizando unicamente el comando "int" Calcula el valor decimal de: int(int(int(x^2 + sin(y) * sin(z)))) dx dy xz. 
%   con D = {(x,y,z) = 0 < x < sqrt(5); 0 < y < 2 * pi; 0 < z < arctan(2);

syms x y z;

f = x^2 + sin(y) * sin(z);

result = double(int(int(int(f, x, 0, sqrt(5)), y, 0, 2), z, 0, atan(2)));

disp(result);
