function outputValue = Newton1(f, a, tolerancia, errorfun, maxiter)
    % Ejercicio 4.
    % Falta arreglar.
        syms x;
        
        if diff(f) ~= 0
            i = 1;
            fun = matlabFunction(f);
            h = fun(a) / diff(fun(a));
            c = a - h;

            disp('------------------------------------------');
            fprintf('| i |   a  |   c  |   b  |     h      | \n', i, a, c, b, h); 
            disp('------------------------------------------');
            
            while (abs(f(c)) > errorfun) && (h > tolerancia) && (i <= maxiter)

                h = fun(a) / diff(fun(a));
                c = a - h;
                a = c;
                
                % Descomenta esto para ver los datos en detalle referente al resultado (ULTIMA ITERACION).
                fprintf('| %1.0f | %.2f | %.2f | %.2f |    %.2f    | \n', i, a, c, b, h); 
                
                i = i + 1;

            end
            
            outputValue = c;
        else
            disp(diff(f));
            disp('No se puede continuar, no se puede dividir entre cero.');
        end
end
