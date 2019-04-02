% Ejercicio 4

% Como todos ya sabemos que L = sin(sqrt(1 + diff(x)^2), a, b) dx, calcula la longitud de la curva y = nthroot(x^2,3) para
%   el intervalo 0 < x < 4;


% Longitud de la curva de Y

syms x;
y = @(x) (x^2)^(1/3);    % Convertimos en función anónima
dy = diff((x^2)^(1/3));  % Hacemos la primera derivada
F = sqrt(1 + dy^2);      % Lo ponemos todo dentro de una variable igual que en la fórmula

% Mínimos y Máximos de X

a = 0;
b = 2;


L = double(int(F,x,a,b)) % Igualamos L a la integral definida de la variable F entre a y b 
