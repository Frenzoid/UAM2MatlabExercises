% Pagina 14 de la transparencia Practica2.pdf
% La función que queremos analizar es: 2 * (x^2 - 9) / x^2 - 4;

% ------ a) > Preparando el terreno.
% Definimos la variable simbolica.
syms x;

% Separamos el numerador y el denominador en 2 partes diferentes.
numerador = 2 * (x^2 - 9);
denominador = x^2 - 4;

% Declaramos la funcion.
f(x) = numerador/denominador;


% ------ b) > Mostramos la representación grafica de la función.
ezplot(f);
title('Analisis de la funcion');
hold on; % Si queremos sobreponer el resto de graficos.


% ------ c) > Asintotas HORIZONTALES.
ezplot(limit(f, inf));


% ------ d) > Asintotas VERTICALES.
% Resolvemos el denominador y la almacenamos en una variable.
denSolv = solve(denominador == 0);

% Comprobamos si son reales, mostramos la representación. !ATENCIÓN¡: Es posible que salga mas de un punto critico (vector de puntos).
for i = 1:size(denSolv)
    disp(denSolv(i));
    if isreal(denSolv(i))
        plot([denSolv(i), denSolv(i)], [-100, 100]); % Envez de -100 y 100 tendria que ser -inf y inf, pero no funciona (por arreglar).
    end
end


% ------ e) > Sacamos la derivada para los puntos criticos.
f1 = diff(f);


% Simplificamos para que no quede tan feo.
f1 = simplify(f1);


% ------ f) > Sacamos los puntos criticos.
% Para los puntos crıticos se RESUELVE f'(x) == 0.
criticos = solve(f1 == 0); % !ATENCIÓN¡: Es posible que salga mas de un punto critico (vector de puntos).


% ------ g) > Para ver si es un maximo o mınimo se necesita el signo de
% la segunda derivada.

f2 = simplify(diff(f, 2));

    for i = 1:length(criticos)
    % POR CADA PUNTO CRITICO %
        % Resolvemos igualando la segunda derivada a 0, y vemos si es positivo o
        % negativo.

        f2solv = subs(f2, criticos(i));

        % Una vez sabemos si es min o max, dibujamos dependiendo de si es pos o
        % neg.

        plot(criticos(i), f(criticos(i)), 'ro');
        
        title('Analisis de la funcion');
        
        if f2solv > 0
            text(criticos(i), subs(f, criticos(i)), 'Minimo relativo');
        else
            if f2solv < 0
                text(criticos(i), subs(f, criticos(i)), 'Maximo relativo');
            else
                text(criticos(i), subs(f, criticos(i)), 'Punto de Silla');
            end
        end
    end
    
    
% ------ h) > Y sacamos la concavidad usando el signo de la segunda derivada.
% La concavidad la hacemos en una ventana aparte.
hold off;

figure();
ezplot(sign(f2), [5,-5]);
