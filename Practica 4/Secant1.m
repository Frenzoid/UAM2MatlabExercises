function outputValue = Secant1(f, a, b, tolerancia, errorfun, maxiter)
    % Ejercicio 3.
           
        i = 1;
        h = f(a) * (b-a) / ( f(b) - f(a) );
        c = (a + b) / 2;
       
        while ~(abs(f(c)) <= errorfun) && ~(h <= tolerancia) && i < maxiter && i < 4

            if abs(f(a)) > abs(f(b)) % Si f(a) es mayor que f(B) intercambiamos a por b, y b por a.
                bridgeVar = a; % Variable que usaremos de puente para intercambiar a y b dentro del bucle.
                a = b;
                b = bridgeVar;
            end
            
            h = f(a) * (b-a) / ( f(b) - f(a) );
            c = a - h;

            i = i + 1;
        end
        
        % Descomenta esto para ver los datos en detalle referente al resultado (ULTIMA ITERACION).
        % fprintf('| i |   a  |   c  |   b  |   (b-a)/2  | \n', i, a, c, b, rango); 
        % disp('------------------------------------------');
        % fprintf('| %1.0f | %.2f | %.2f | %.2f |    %.2f    | \n', i, a, c, b, h); 
        outputValue = c;
end
