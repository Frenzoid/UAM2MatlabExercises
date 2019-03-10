% Ejercicio 1.

numero = input('Dime un numero: ');

raiz = sqrt(numero);

if floor(raiz) == raiz % floor redondea un numero, si el numero redondeado no es igual a si mismo, es que tiene decimales.
    fprintf('El numero: %0.f, tiene una raiz cuadrada entera \n', numero);
else
    fprintf('El numero: %0.f, no tiene una raiz cuadrada entera \n', numero);
end
