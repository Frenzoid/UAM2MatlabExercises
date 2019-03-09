% Ejercico 9.

syms m b x;
f(x) = x^2 + 1
ezplot(f);
hold on;
plot(0, 2, 'ro');

numeros = [-10:10];
resultados = subs(f, x, numeros);

finales = resultados + numeros;

minVal = min(finales);
nimValIndex = find(finales == minVal);

plot(numeros(nimValIndex(2)), resultados(nimValIndex(2)), 'bo');
    
% Está mal.
