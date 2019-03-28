% Calcula si la inegral indefinida int(1/(x^2+5*x+4), x, 4, inf) converge o diverge. En caso de converger, cual es su valor?

%Ejercicio 2

%Converge o diverge

syms x;
den = x^2 + 5*x + 4;
f = @(x)1/den;

value = double(int(f,x,4,inf))

if isreal(value)
        fprintf('Converge ya que es real, y el valor es: %.2f \n', value);
    A = 1;    
else
    fprintf('Diverge ya que no es real \n');
end
