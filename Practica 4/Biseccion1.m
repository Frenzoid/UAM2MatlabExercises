function outputValue = Biseccion1(f, a, b, tolerancia, errorfun, maxiter)
    % Ejercicio 1.
    
    % outputValue: Variable de salida.
    % f: funcion a procesar.
    % a: inicio del intervalo.
    % b: fin del intervalo.
    % tolerancia: distancia minima entre a y b (b - a).
    % errorfun: error minimo de la funcion (cantidad de decimales que queires que tu resultado tenga.
   
    if f(a) * f(b) < 0 % Comprueba si la funcion converge dentro del intervalo.
        
        i = 1; % Contador de iteradores.
        h = abs(b - a); % rango del intervalo. ( lo usamremos para calcular el error del rango ).
        c = (a + b) / 2; % Inicializamos 'c' para poder usarlo en la condicion (porque matlab no soporta do...while).
        
        % Condicion de salida.
        % Mientras que f(x) no sea menor o igual a errorfun introducido, Y 
        % Mientras que el error del rango no sea menor o igual a la tolerancia introducida, Y 
        % Mientras que las iteraciones sean menores que 4, Y 
        % Mientras que las iteraciones sean menores que maxiter,
        % continuamos el bucle.

        while ~(abs(f(c)) <= errorfun) && ~(h <= tolerancia) && i < maxiter && i < 4

            c = (a + b) / 2; % Por cada iteracion, actualizamos el punto de enmedio.
            h = h / 2; % Por cada iteracion, actualizamos el error.

            if f(c) == 0 % Si nos topamos con 0 (valor exacto), entonces ya hemos acabado.
                break;
            end
            
            if f(a) * f(b) < 0 % Si el resultado es menor que 0, la convergencia esta en la primera mitad del intervalo. De a hasta la mitad de a y b).
                b = c;         %  si no es 0, la convergencia esta en la segunda mitad del intervalo. De la mitad de a y b hasta b.
            else
                a = c;
            end
            
            % Descomenta esto para ver los datos en detalle referente al resultado.
            % fprintf('| %1.0f | %.2f | %.2f | %.2f |    %.2f    | \n', i, a, c, b, h); 

            i = i + 1;
        end
        
        outputValue = c; % Devolvemos c (que seria el valor aproximado para x para que la funcion cumpla las condiciones.
    else
        disp('Intervalo no valido'); % No hay convergencia en el intervalo introducido.
    end
end

