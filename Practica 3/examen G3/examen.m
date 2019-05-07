syms x; % Declaramos x como simbolica para usarla al usar el comando int.
f = @(x) exp(cos(x^2)); % Declaramos la funcion.

a = input('Dime el valor de (a): '); % Pedimos a.
b = input('Dime el valor de (b): '); % Pedimos b.

if isempty(a) || isempty(b)
    disp('Uno de los valores está vacio, porfavor, introduce valores validos.');
else
    
    resultInt = int(f, x, a, b); % Calculamos la integral.

    fprintf('Valor de la integral original: %.2f \n', resultInt); % Mostramos el valor de la integral.

    resultSimpson = simpson(f, a, b); % Calculamos simpson.

    fprintf('Valor de la integral usando simpson: %.2f \n', resultSimpson); % Mostramos el valor de simpson.

    error = abs(100 - (100 * resultSimpson / resultInt)); % Calculamos el % de error (siempre positivo)

    fprintf('El porcentaje de error es de: %3.0f porciento.\n', error); % Mostramos el %  de error.

end
