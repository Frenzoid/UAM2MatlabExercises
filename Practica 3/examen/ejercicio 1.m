% Calcular el volumen comprendido entre f(x,y) = xy^2 y el plano xy, sobre el rectángulo D {(x,y): 0 < x < 2, 0 < y < 1}.
% Define f como una función anonima @).

%Ejercicio 1

%El rectangulo con dominio D, siendo un plano XY estando X entre 0 y 2 y estando Y
%entre 0 y 1

syms x y;
f = @(x,y) x*y^2;       %Convertimos en función anónima

%Mínimos y Máximos de X
a = 0;
b = 2;

%Mínimos y Máximos de Y
c = 0;
d = 1;

%El volumen es la integral doble
V = dblquad(f,a,b,c,d);
