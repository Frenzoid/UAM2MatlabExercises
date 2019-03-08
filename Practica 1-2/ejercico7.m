% Ejercicio 7.

syms y x;
g = @(a,b,c) a * y ^ 2 + b * x * y + c * x ^ 2;
ezsurf(g(17,9,11)); % Usamos ezsurf porque al haber mas de una incognita (x, y), la representacion grafica será en 3D.

% ezsurf y ezmesh sirven para lo mismo (reprensetar graficos en 3D), 
%  solo que a la hora de renderizarlo, ezsurf tiene mas contraste, y ezmesh es mas suave.
