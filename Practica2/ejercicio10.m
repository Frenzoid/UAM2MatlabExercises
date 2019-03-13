% Ejercicio 10.

syms m b;
xi = 1 : 10;
yi(1) = 3.5; yi(2) = 4; yi(3) = 8; yi(4) = 9.5; yi(5) = 10; 
yi(6) = 12; yi(7) = 14; yi(8) = 16; yi(9) = 18.5; yi(10) = 20;

% Mostramos los puntos.
plot(xi, yi,'ro');
hold on;

% Creamos la formula. (siempre es la misma (yi - m * xi - b);
f(m) = sum((yi - m * xi - 2.0468).^2);

% Sacamos los criticos.
f1 = simplify(diff(f));
crits = double(solve(f1 == 0));

% Los mostramos.
ezplot(@(x) crits * x, [0,10]);
