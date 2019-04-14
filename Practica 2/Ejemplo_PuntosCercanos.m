% Puntos Cercanos:
% La formula tiene que satisfacer: yi = m * xi + b

syms m b;
xi = 1 : 10;
yi(1) = 3.5; yi(2) = 4; yi(3) = 8; yi(4) = 9.5; yi(5) = 10; 
yi(6) = 12; yi(7) = 14; yi(8) = 16; yi(9) = 18.5; yi(10) = 20;

% Mostramos los puntos.
plot(xi, yi,'ro');
hold on;

% Calculamos los puntos cercanos.
f(m) = sum((yi - m * xi).^2);

f1 = diff (f , m);

respuesta = double(solve(f1 == 0));

% Imprimimos la linea mas cercana a los puntos.
ezplot(@(x) respuesta * x, [0, 13]);
