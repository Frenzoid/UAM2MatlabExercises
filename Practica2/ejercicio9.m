syms x y;

f(x) = x^2 + 1;
ezplot(f);
hold on;
plot(0, 2, 'ro')


% formula de la diferencia entre 2 puntos: v = (x1 - y1, x2 - y2);
% formula de la distancia de un vector: raiz((x)2 + (y)^2);

formulaDistancia = sqrt((x - 0)^2 + (y - 2)^2);

% Substituimos y.
distancia = subs(formulaDistancia, y, f);


% derivamos para ciriticos.
f1 = simplify(diff(distancia))

% sacamos criticos.
criticos = solve(f1 == 0)

% imprimimos criticos.
for crit = criticos
    plot(crit, f(crit), 'bo')
end;
