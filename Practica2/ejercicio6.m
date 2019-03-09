% Ejercicio 6.
syms x;
funciones = [(2*x)/(x^2+1), log(x)/(x), (x + 1)/(sqrt(x - 1) - 5), ((x^3)/(x-1)^2)-8]; % Funciones a analizar.
den = [(x^2+1), (x), (sqrt(x-1)-5), (x-1)^2-8]; % Denominadores de las funciones a analizar.

% POR CADA FUNCION %
for f = 1 : length(funciones)
    figure();
	
    % Funcion.-----------------------------------------------------------------
    func = funciones(f);
    ezplot(func);
    hold on;


    % Asintota.----------------------------------------------------------------
    % Horizontal.
    denSolv = solve(den(f) == 0);

	% Comprobamos si son reales, mostramos la representación. !ATENCIÓN¡: Es posible que salga mas de un punto critico (vector de puntos).
	for i = 1:size(denSolv)
		% POR CADA ASINTOTA %
		disp(denSolv(i));
		if isreal(denSolv(i)) % La imprimimos solo si es real.
			plot([denSolv(i), denSolv(i)], [-100, 100]); % Envez de -100 y 100 tendria que ser -inf y inf, pero no funciona (por arreglar).
		end
	end


    % Derivada.----------------------------------------------------------------
    f1 = simplify(diff(func));


    % Punto Critico. ----------------------------------------------------------
    crit = solve(f1 == 0);

    % Para comprobar si es min o max, hay que hacer la segunda derivdada.
    f2 = simplify(diff(func, 2));

    for i = 1:length(crit)
    % POR CADA CRITICO %
        % Resolvemos igualando la segunda derivada a 0, y vemos si es positivo o
        % negativo.

        f2solv = subs(f2, crit(i));

        % Una vez sabemos si es min o max, dibujamos dependiendo de si es pos o
        % neg.

        plot(crit(i), subs(func , crit(i)), 'ro');
				
        if f2solv > 0
            text(crit(i), subs(func , crit(i)), 'Minimo relativo');
        else
            if f2solv < 0
                text(crit(i), subs(func , crit(i)), 'Maximo relativo');
            else
                text(crit(i), subs(func , crit(i)), 'Punto de Silla');
            end
        end
    end
    title(['Analisis de la funcion noº ', num2str(f)]);

   % Concavidad y convexidad. ------------------------------------------------
    hold off;
    figure();
    ezplot(sign(f2), [-5, 5]);
    title(['Concavidad de la funcion noº ', num2str(f)]);
end
