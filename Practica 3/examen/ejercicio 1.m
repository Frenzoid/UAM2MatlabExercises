% Calcular el volumen comprendido entre f(x,y) = xy^2 y el plano xy, sobre el rectángulo D {(x,y): 0 < x < 2, 0 < y < 1}.
% Define f como una función anonima @).

% Funcion.
f = @(x,y) x*y^2;

% Limites de x.
xa = 0;
xb = 2;


% Limites de y.
ya = 0;
yb = 1;

% Operacion de integrales dobles, primero se hace la x, y despues la y.
dblquad(f,xa,xb,ya,yb)
