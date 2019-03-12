% Ejercicio 7.

% Nos piden el precio minimo de la dimension del solar.
%   Ya que ya nos dan medidas fijas, el precio minimo será el
%   calculo de las areas.

% Area casa: 100 = x * y)
% AreaSolar: (8 + y) * (10 + x);
% Coste Solar: AreaSolar * 1000;

% Despejamos y:
    % 100 / x = y;
    
% Substituimos:
    % (8 + 100 / x) * (10 + x) * 1000;
    
% Calculamos;
    % 80 + 8x + 1000/x + 100 * 1000
    
% Derivamos:
    % 8 - 1000/x^2
    
% Igualamos a 0 y sacamos los criticos:
    % 8 * x^2 = 1000;
    % x^2 = 1000/8;
    % x = +raiz(1000/8);
    
    
    
    
syms x y;

f = (8 + y) * (10 + x) * 1000;
fy = 100 / x;

f = subs(f, y, fy);

f1 = diff(f);
fcrits = double(solve(f1 == 0));

fcrits = fcrits(2); % El valor positivo.

disp(fcrits);
 
    
