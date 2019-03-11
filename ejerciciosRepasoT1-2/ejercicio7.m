% Ejercico 7.

% Se quiere construir una casa de 100m
%    con un jardin de 5m de ancho en la parte frontal / trasera
%    y 4m de ancho en las partes laterales.

% El precio por m2 es de 1000eur.

% Conclusión: sacar la dimension para el minimo coste posible para la construccion.

% Area de la CASA: 100 = x * y;
% Area del JARDIN: (x + 8 * y + 10) - x * y;
% Area del SOLAR (Area total): f(x,y) = x + 8 * y + 10;

% Despejamos y:
  % (100/x) = y;
  
% Substituimos y en f:
  % x + 8 * (100/x) + 10;
  
% Derivamos para sacar el maximo:
  % 1 - 800/x^2;
  
% Igualamos a 0 y despejamos x para sacar los criticos:
  % 1 - 800 = x^2;
  % +-√1-800 = x;


syms x y;

areaCasa = 100 == x * y;

areaSolar = (x + 8) * (y + 10);

yDespejada = solve(areaCasa, y)

areaSolarSubstituida = simplify(subs(areaSolar, y, yDespejada))

areaSolarDerivada = simplify(diff(areaSolarSubstituida))

criticos = simplify(solve(areaSolarDerivada == 0))

disp(min(criticos))

precio = subs(areaSolarSubstituida, x, min(criticos)) * 1000

disp(min(precio));

% Creo que está mal.
