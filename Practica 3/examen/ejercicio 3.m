
% Utilizando unicamente el comando "int" Calcula el valor decimal de: int(int(int(x^2 + sin(y) * sin(z)))) dx dy xz. 
%   con D = {(x,y,z) = 0 < x < sqrt(5); 0 < y < 2 * pi; 0 < z < arctan(2);

% Ejercicio 3.

%Integral triple con valor décimal en el dominio D siendo X entre 0 y raiz
%de 5, Y entre 0 y 2pi y Z entre 0 y arcotangente de 2
syms x y z;
fun = @(x,y,z)x^2 + sin(y)*sin(z); %Convertimos en función anónima

%Mínimos y Máximos de X
a = 0;
b = sqrt(5);

%Mínimos y Máximos de Y
c = 0;
d = 2*pi;

%Mínimos y Máximos de Z

e = 0;
f = atan(2);

value = double(int(int(int(fun,z,e,f),y,c,d),x,a,b));
disp(value)
