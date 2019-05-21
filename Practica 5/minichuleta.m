x = [1,2,3,4];
y = [2,4,3,5];

a = polyfit(x, y, 3) % Devuelve los coeficientes del polinomio interpolador de grado = 3.

xp = [1 : 0.01 : 4];
yp = polyval(a, xp)  % Evalua el polinomio 'a' en 'xp'.

qq = spline(x, y)    % Obtiene el spline cubico usando los datos x, y siendo estos las abcisas y las ordenadas respectivamente.
