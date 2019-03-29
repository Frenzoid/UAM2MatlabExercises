f = @(x) x.^2 + 1;

a = 1;
b = 9;
n = 10;

xi = linspace(a, b, n+1);

h = (b - a)/n;

ezplot(f, [a, b]);
hold on;

for i = 1:n
    plot([xi(i) xi(i)], double([0 f(xi(i))]), 'r');
    plot([xi(i) xi(i+1)], double([f(xi(i)) f(xi(i))]), 'r');
    plot([xi(i+1) xi(i+1)], double([0 f(xi(i))]), 'r');
    
    plot([xi(i) xi(i)], double([0 f(xi(i+1))]), 'g');
    plot([xi(i) xi(i+1)], double([f(xi(i+1)) f(xi(i+1))]), 'g');
    plot([xi(i+1) xi(i+1)], double([0 f(xi(i+1))]), 'g');
end

for i = 1:n + 1
    yi(i) = f(xi(i));
end

Ln = h * sum(double(yi(1:n)));
Rn = h * sum(double(yi(1:n + 1)));

I = double(int(f, x, a, b));

fprintf('Ln = %.2f, Rn = %.2f, Valor al que se aproxima = %.2f \n', Ln, Rn, I);
