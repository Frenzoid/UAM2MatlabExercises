function outputValue = PuntoFijo1(g, c, tolerancia, errorfun, maxiter)
    % Ejemplo.
    
        syms x;
        i = 1;
        h = tolerancia + 1; % lo inicializamos con un valor para que entre en el bucle.
        f = solve(f, x);
       
        while ~(abs(g(c)) < errorFun) && ~(h < tolerancia) && i < maxiter && i < 4

        c = g(c); % c ahora es el resultado de g(c).
        h = abs(c - g(c)); % calculamos la diferencia entre el valor y el resultado de la funcion.
        i = i + 1;
        
        end
        
        % Descomenta esto para ver los datos en detalle referente al resultado (ULTIMA ITERACION).
        % fprintf('| i |   a  |   c  |   b  |   (b-a)/2  | \n', i, a, c, b, rango); 
        % disp('------------------------------------------');
        % fprintf('| %1.0f | %.2f | %.2f | %.2f |    %.2f    | \n', i, a, c, b, h); 
        outputValue = c;
end
