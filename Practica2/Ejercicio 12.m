% Ejercicio 11.
syms x;

fa = @(x) x^2 - 12 * x + 3;
fb = @(x) x + cos(x^2);

facrits = fminbnd(fa, -1, 8)
fbcrits = fminbnd(fb, 0, pi)

% representacion de fa.
ezplot(fa, [-1, 8]);
hold on;
plot(facrits, fa(facrits), 'ro');

% representacion de fb.
figure();
ezplot(fb, [0, pi]);
hold on;
plot(fbcrits, fb(fbcrits), 'ro')
