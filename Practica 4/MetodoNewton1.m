function outputValue = Secant1(f, a, b, tolerancia, errorfun, maxiter)
    % Ejemplo.
        
        if diff(f(a)) ~= 0
            i = 1;
            h = f(a) / diff(f(a));
            c = a - h;

            while ~(abs(f(c)) <= errorfun) && ~(h <= tolerancia) && i < maxiter && i < 4
                if diff(f(a)) == 0
                    disp('f(a) == 0, no se puede dividir.');
                    break
                end

                h = f(a) / diff(f(a));
                c = a - h;
                a = c;    
                i = i + 1;

            end

            % Descomenta esto para ver los datos en detalle referente al resultado (ULTIMA ITERACION).
            % fprintf('| i |   a  |   c  |   b  |   (b-a)/2  | \n', i, a, c, b, rango); 
            % disp('------------------------------------------');
            % fprintf('| %1.0f | %.2f | %.2f | %.2f |    %.2f    | \n', i, a, c, b, h); 
            outputValue = c;
        else
            disp('f(a) == 0, no se puede dividir.');
        end
end