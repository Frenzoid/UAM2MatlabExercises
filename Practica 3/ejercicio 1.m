% Ejercicio 1.
syms x;

% Declaramos la funcion.
f = @(x) sqrt(x);

% y los valores de donde hasta donde. (inicio y final)
ini = 1;
fin = 2;

% La cantidad de sumas (rectangulos) que queremos calcular (o mostrar en el
% grafico).
cant = 4;

% Imprimimos la grafica, y que solo se muestre entre ese rango.
ezplot(f(x), [ini, fin]);
hold on;

% Creamos una matriz desde el inicio hasta el final, de la cantidad de
% 'cant' veces: si el punto de inicio es 1 y el de final es 2, la matriz
% será: [1.00 1.33 1.66 2.00]. (de 1 hasta 2, por 4 iteraciones).
xi = linspace(ini, fin, cant + 1);

% Dibujamos la grafica.
for i = 1 : cant
    % Primero para el rectangulo inferior.
    Ll(i) = plot([xi(i) xi(i)], double([0 f(xi(i))]),'g');
    Lt(i) = plot([xi(i) xi(i + 1)], double([f(xi(i)) f(xi(i))]),'g');
    Lr(i) = plot([xi(i + 1) xi(i + 1)], double([0 f(xi(i))]),'g');

    % Y despues para el rectangulo superior.
    Rl(i) = plot([xi(i) xi(i)], double([0 f(xi(i + 1))]),'r');
    Rt(i) = plot([xi(i) xi(i + 1)], double([f(xi(i + 1)) f(xi(i + 1))]),'r');
    Rr(i) = plot([xi(i + 1) xi(i + 1)], double([0 f(xi(i + 1))]),'r');
end

% Y realizamos los calculos.
for k = 1 : cant
    h = (fin - ini)/cant;
    
    for i = 1 : cant + 1
        yi(i) = f(xi(i));
    end
    
    Ln = h * sum(double(yi(1 : cant)));
    Rn = h * sum(double(yi(2 : cant + 1)));
    
    disp(double([Ln Rn])); pause
end

% Y al final, mostramos la integral.
int(sqrt(x))
