% Declaramos la función (como simbolica).
syms x;
funcion = x^2 - sin(x) - 0.5;

% Declaramos el error.
tol = 0.00001;

% Declaramos el maxiter.
miter = 20;

% Llamamos a la función.
[datos0, raiz0] = NewtonModificado(funcion, 0, tol, miter)
[datos2, raiz2] = NewtonModificado(funcion, 2, tol, miter)