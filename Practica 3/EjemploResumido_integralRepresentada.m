% Declaramos x como symbolica 
%      (aunque f sea una funcion handle, 
%      la seguimos necesitando para especificar 
%      que variable integrar cuando usemos int(); ).
syms x;

% La funcion a calcular.
f = @(x) x.^2 + 1; 

a = 1; % Punto de inicio.
b = 9; % Punto Final.
n = 10; % Numero de rectangulos. (Mientras mas numeros, mas cerca del valor exacto).

% Guardamos en una matriz, los valores de n+1 de 'a' a 'b'. (Haz un disp de xi para entenderlo).
xi = linspace(a, b, n+1); 

% Sacamos la altura media.
h = (b - a)/n; 

% Mostramos la grafica.
ezplot(f, [a, b]); 

% OPCIONAL. (Ajusta la grafica para que se vea mejor respecto a los valor que tenemos).
axis(double([a - 1, b + 1, 0 f(b + 1)]));

% Anclamos el grafico.
hold on;

% Hacemos el bucle que dibuja los rectangulos
for i = 1 : n 
    % Rectangulos de la izquierda.
    plot([xi(i) xi(i)], double([0 f(xi(i))]), 'r');
    plot([xi(i) xi(i+1)], double([f(xi(i)) f(xi(i))]), 'r');
    plot([xi(i+1) xi(i+1)], double([0 f(xi(i))]), 'r');
    
    % Rectangulos de la derecha.
    plot([xi(i) xi(i)], double([0 f(xi(i+1))]), 'g');
    plot([xi(i) xi(i+1)], double([f(xi(i+1)) f(xi(i+1))]), 'g');
    plot([xi(i+1) xi(i+1)], double([0 f(xi(i+1))]), 'g');
end

% Calculamos el sumatorio total.
for i = 1:n + 1
    yi(i) = f(xi(i));
end

% Hacemos los calculos de la izq, y de la derecha.
Ln = h * sum(double(yi(1:n))); % Nos dará el valor aproximado por la izquierda.
Rn = h * sum(double(yi(1:n + 1))); % Nos dará el valor aproximado por la derecha.

% Hacemos el valor exacto con una integral. (nos dará el valor exacto).
I = double(int(f, x, a, b));

% Mostramos los resultados.
fprintf('Ln = %.2f, Rn = %.2f, Valor al que se aproxima = %.2f \n', Ln, Rn, I);

% Desanclamos el grafico.
hold off;

% https://www.youtube.com/watch?v=IBDuB3l7ucQ
% Y arreando que es tarde!
