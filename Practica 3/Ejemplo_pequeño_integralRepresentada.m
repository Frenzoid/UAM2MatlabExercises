syms x;

f = @(x) x.^2 + 1;

a = 1; % Punto inicio de la grafica.
b = 9; % Punto final de la grafica.
n = 10; % Cantidad de divisiones (cuantos rectangulos)

xi = linspace(a, b, n + 1);
h = (b - a)/n;

ezplot(f(x), [a - 1, b + 1]);
axis(double([a - 1, b + 1, 0 f(b + 1)]));

hold on;

for i = 1 : n
    Ll(i) = plot([xi(i) xi(i)], double([0 f(xi(i))]), 'g');
    Lt(i) = plot([xi(i) xi(i + 1)], double([f(xi(i)) f(xi(i))]), 'g');
    Lr(i) = plot([xi(i + 1) xi(i + 1)], double([0 f(xi(i))]), 'g');
    
    Rl(i) = plot([xi(i) xi(i)], double([0 f(xi(i + 1))]), 'r');
    Rt(i) = plot([xi(i) xi(i + 1)], double([f(xi(i + 1)) f(xi(i + 1))]), 'r');
    Rr(i) = plot([xi(i + 1) xi(i + 1)], double([0 f(xi(i + 1))]), 'r');
end

for i = 1 : n + 1
    yi(i) = f(xi(i));
end

Ln = h * sum(double(yi(1 : n)));
Rn = h * sum(double(yi(2 : n + 1)));
I = double(int(f(x), a, b));

fprintf('Ln = %.2f, Rn = %.2f, I = %.2f \n', Ln, Rn, I);

title([n ," rectangulo/s"]);
hold off;
