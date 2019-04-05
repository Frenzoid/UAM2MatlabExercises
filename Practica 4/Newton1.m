function outputValue = Newton1(f, a, tolerancia, errorfun, maxiter)
    % Ejercicio 4.
        % Falta arreglar
        if diff(f) ~= 0
            i = 1;
            h = f(a) / diff(f(a));
            c = a - h;

            while ~(abs(f(c)) <= errorfun) && ~(h <= tolerancia) && i < maxiter && i < 4
                if diff(f) == 0
                    disp(diff(f(a)));
                    disp('No se puede continuar, no se puede dividir entre cero.');
                    break
                end

                h = f(a) / diff(f(a));
                c = a - h;
                a = c;
                
                % Descomenta esto para ver los datos en detalle referente al resultado (ULTIMA ITERACION).
                fprintf('| %1.0f | %.2f | %.2f | %.2f |    %.2f    | \n', i, a, c, b, h); 
                
                i = i + 1;

            end
            
            outputValue = c;
        else
            disp(diff(f(a)));
            disp('No se puede continuar, no se puede dividir entre cero.');
        end
end
