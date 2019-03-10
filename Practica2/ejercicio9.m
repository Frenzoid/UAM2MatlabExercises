% Ejercico 9.

syms m b x;
f = x^2 + 1;
ezplot(f);
hold on;
plot(0, 2, 'ro');

numeros = -10:10;
resultados = subs(f, x, numeros);

minimoIterador = 0;
minVal = inf;

for i = 1:length(numeros)
    if numeros(i) + resultados(i) < minVal
        minimoIterador = i;
        valor = numeros(i) + resultados(i);
        minVal = valor;
    end

end

plot(numeros(minimoIterador), resultados(minimoIterador), 'ro');

% Falta arreglarlo.
