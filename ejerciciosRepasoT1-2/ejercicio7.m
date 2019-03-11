% Ejercicio 7.

% Nos piden el precio minimo de la dimension del solar.
%   Ya que ya nos dan medidas fijas, el precio minimo será el
%   calculo de las areas.

% Area del solar = 100m2.
% Area del patio = (5+5) * (4+4) = 10 * 8;

% Area total = areaSolar + AreaPation;
% PrecioTotal = areaTotal * 1000;

areaCasa = 100;

areaPatio = 8 * 10;


dimensionesSolar = areaCasa + areaPatio;

coste = 1000 * dimensionesSolar;

fprintf('Dimension minima del solar %.2f y el precio es %.2f \n', dimensionesSolar, coste);
