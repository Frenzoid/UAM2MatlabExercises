% Declaramos la variable.
syms x;

% Y la funcion.
f = @(x) x.^2 + 1;

% Definimos los limites.
a = 1; % Punto inicio de la grafica.
b = 9; % Punto final de la grafica.
n = 1; % Cantidad de divisiones (cuantos rectangulos)

% Dibujamos el grafico, y lo mostramos entre el rango 'a-1' y 'b+1'
ezplot(f(x), [a - 1, b + 1]);

% Ajustamos el eje para que se muestre pegado a la parte inferior.
axis(double([a - 1, b + 1, 0 f(b + 1)]));

% Encadenamos el grafico, para sobreponer mas datos sobre el.
hold on;

% Dibujamos los rectangulos.
% Primero el rectangulo que separa el area que queremos calcular con en
% resto de la parte inferior.
Ll = plot([a a], double([0 f(a)]), 'g');
Lt = plot([a b], double([f(a) f(a)]), 'g');
Lr = plot([b b], double([0 f(a)]), 'g');

% Y ahora dibujamos el rectangulo del area que queremos calcular.
Rl = plot([a a], double([0 f(b)]), 'r');
Rt = plot([a b], double([f(b) f(b)]), 'r');
Rr = plot([b b], double([0 f(b)]), 'r');

title([n ," rectangulo/s"]);
hold off;

% --------------------------------------------------------------------

% Ahora vamos a dividir ese rectangulo rojo en pequeños rectangulitos.
% Dibujamos el grafico, y lo mostramos entre el rango 'a-1' y 'b+1'
figure();
ezplot(f(x), [a - 1, b + 1]);

% Ajustamos el eje para que se muestre pegado a la parte inferior.
axis(double([a - 1, b + 1, 0 f(b + 1)]));

% Encadenamos el grafico.
hold on;

% Incrementamos la cantidad de rectangulos, y lo usamos como contador para nustro for.
n = n * 2;

% Creamos una matriz que va desde 'a' a 'b', con una longitud de 'n + 1'
xi = linspace(a, b, n + 1);
)

% Y dibujamos los rectangulos inferiores y superiores n veces.
for i = 1 : n
    % Primero para el rectangulo inferior.
    Ll(i) = plot([xi(i) xi(i)], double([0 f(xi(i))]), 'g');
    Lt(i) = plot([xi(i) xi(i + 1)], double([f(xi(i)) f(xi(i))]), 'g');
    Lr(i) = plot([xi(i + 1) xi(i + 1)], double([0 f(xi(i))]), 'g');
    
    % Y despues para el rectangulo superior.
    Rl(i) = plot([xi(i) xi(i)], double([0 f(xi(i + 1))]), 'r');
    Rt(i) = plot([xi(i) xi(i + 1)], double([f(xi(i + 1)) f(xi(i + 1))]), 'r');
    Rr(i) = plot([xi(i + 1) xi(i + 1)], double([0 f(xi(i + 1))]), 'r');
end

title([n ," rectangulo/s"]);
hold off;

% --------------------------------------------------------------------
% Mas rectangulos, pero esta vez el area es dividida en 2^k rectangulos.
% Dibujamos el grafico, y lo mostramos entre el rango 'a-1' y 'b+1'
figure();
ezplot(f(x), [a - 1, b + 1]);

% Ajustamos el eje para que se muestre pegado a la parte inferior.
axis(double([a - 1, b + 1, 0 f(b + 1)]));

% Encadenamos el grafico.
hold on;

% Dibujamos los rectangulos. !ATENCIÓN¡, Para esta parte, falta corrección!
for k = 0 : 9 % de 0 a nueve.
    n = 2^k; % n será 2^k en cada iteración.
    xi = linspace(a, b, n + 1); % Reajustamos nuestra cantidad de triangulos.
    for i = 1 : n
        % Primero para el rectangulo inferior.
        Ll(i) = plot([xi(i) xi(i)], double([0 f(xi(i))]),'g');
        Lt(i) = plot([xi(i) xi(i + 1)], double([f(xi(i)) f(xi(i))]),'g');
        Lr(i) = plot([xi(i + 1) xi(i + 1)], double([0 f(xi(i))]),'g');
        
        % Y despues para el rectangulo superior.
        Rl(i) = plot([xi(i) xi(i)], double([0 f(xi(i + 1))]),'r');
        Rt(i) = plot([xi(i) xi(i + 1)], double([f(xi(i + 1)) f(xi(i + 1))]),'r');
        Rr(i) = plot([xi(i + 1) xi(i + 1)], double([0 f(xi(i + 1))]),'r');
    end
end

title([n ," rectangulo/s"]);

% Y hacemos la suma de izquerda y derecha, y la mostramos.
syms x;
f = @(x)x^2 + 1;

a = 1;
b = 9;

for k = 0 : 12
    n = 2^k;
    xi = linspace(a, b, n + 1);
    h = (b - a)/n;
    
    for i = 1 : n + 1
        yi(i) = f(xi(i));
    end
    
    Ln = h * sum(double(yi(1 : n)));
    Rn = h * sum(double(yi(2 : n + 1)));
    I = double(int(f(x), a, b));
    disp(double([Ln Rn I])); pause % Pause fuerza a que el usuario aprete intro por cada iteracion del bucle para avanzar.
end
