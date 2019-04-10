function outputValue = PuntoFijo1(g, c, tolerancia, maxiter)
    % Ejemplo.
    
        i = 1;
        h = tolerancia + 1; % lo inicializamos con un valor para que entre en el bucle.
       
        while ~( g(c) == c) && ~(abs(h) < tolerancia) && i <= maxiter && i <= 4

        c = g(c); % c ahora es el resultado de g(c).
        h = abs(c - g(c)); % calculamos la diferencia entre el valor y el resultado de la funcion.
        
        % Descomenta esto para ver los datos en detalle referente al resultado.
        % fprintf('| %1.0f | %.2f | %.2f |    %.2f    | \n', i, c, g(c), h); 
        
        i = i + 1;
        
        end
        
        outputValue = c;
end
