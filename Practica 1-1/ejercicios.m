% Ejercicio 1.
5^5 + 7 - 26/2
(2^3-7+11)/3.2^2
2.54 * 8/2.6 * (4 + 3)
sqrt(5)

clear


% Ejercicio 2.
x = 2/3;
z = 20/3;
r = 2000/3;
p = 200000000/3;
n = 1.333;

format long;
x
z
r
p
n

format short;
z
r
p
n

clear


% Ejercicio 3.
help num2str

% Ejercicio 4.
x1 = (0:0.1:100);
x2 = (0:100);
plot(x1, sin(x1))
hold on
plot(x2, sin(x2))

clear


% Ejercicio 5.
x = 1.4 * 10^154;
b = 1.3 * 10^154;

a^2 - b^2
% No elevandolo al cuadrado.
clear


% Ejercicio 6.
x = 10/7
y = sym('10/7')
double(y)
y = 5
double(y) = 5

clear


% Ejercicio 7.
sacaHipo = @(x,y) sqrt(x^2 + y^2)
sacaHipo(15, 5)

clear


% Ejercicio 8.
sqrt(5^2 + 7^2 - 2*5*7*cos(pi/6))

clear


% Ejercicio 9.
solve((x^3 + 1)^2)
simplify((x^3 + x^2 - x - 1)/(x-1))
factor(x^3 + x^2 - x - 1)
pretty((x^3 - 1)^2)

clear


% Ejercicio 11.
syms x y;
f1 = y == x^3
f2 = y == x^2 + 1;

% a) 
ezplot(f1, [-2,2]); title('funcion 1');
hold on;
ezplot(f2, [-2,2]); title('funcion 2');

% b)
subplot(1,2,1); ezplot(f1, [-2,2]); title('funcion 1');
subplot(1,2,2); ezplot(f2, [-2,2]); title('funcion 2');

% c)
ezplot(f1, [-2,2]); title('funcion 1');
figure();
ezplot(f2, [-2,2]); title('funcion 2');

% Ejercicio 10.
altura = [5.2 6.6 7.3 8.6 10.7]
plot(1:5, altura, 'color', 'r',)
title('Cultivo')
xlabel('tiempo'); ylabel('altura')

clear;


% Ejercicio 12.
syms x;
ezplot(sin(x), [-3 pi, pi])
ezplot(cos(x), [-3 pi, pi])

clear;


% Ejercicio 13.
M = [1:3, 4:6]
M2 = repmat(0, 2,3) % Crea una matriz de 0, de dimensiones 2 x 3.

clear;


% Ejercicio 14.
M1 = (1:5)
M1 = (6:10)

M1 + M2;
M1 - M2;
M1.^2; M2.^2;
M1.*2;
M2./2;

clear;


% Ejercicio 15.
syms x y;
f = x^3 + y^3 - 6*x*y;
subplot(2,1,1); ezplot(f);
hold on;
subplot(2,1,2); ezcontour(f);

% Ejercicio 16.
blkdiag(randi([2,10]),randi([2,10]),randi([2,10]),randi([2,10]),randi([2,10]),randi([2,10]))
% blkdiag crea una matriz con unos numeros especificos en la diagonal, el resto de numeros de la matriz (los que no son de la diagonal) serán ceros.
% randi devuelve un numero aleatorio, si se quiere especificar el rango, solo hay que poner el min / max entre corchetes.
