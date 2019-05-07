% Ejercicio 2.

% Calcula si la inegral indefinida int(1/(x^2+5*x+4), x, 4, inf) converge o diverge. 
% En caso de converger, cual es su valor?

syms x;

result = int(1/(x^2+5*x+4), x, 4, inf);

if isreal(result)
    disp(double(result))
else
    disp('diverge')
end
