function outputValue = PuntoFijo1(g, c, tolerancia, maxiter)
    % Ejemplo.
        syms x;
    
        i = 1;
        h = abs(c - g(c));
        
        fprintf('| %1.0f | %f | %f |  %f  | \n', i, c, g(c), h); 

        while ~( g(c) == c) && (abs(h) > tolerancia) && (i < maxiter)
            i = i + 1;

            c = g(c); % c ahora es el resultado de g(c).
            h = abs(c - g(c)); % calculamos la diferencia entre el valor y el resultado de la funcion.

            % Descomenta esto para ver los datos en detalle referente al resultado.
            fprintf('| %1.0f | %f | %f |  %f  | \n', i, c, g(c), h); 


        end
        
        outputValue = c;
end
