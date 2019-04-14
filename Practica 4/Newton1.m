function outputValue = Newton1(f, a, tolerancia, errorfun, maxiter)
    % Ejercicio 4.
        syms x;
        
        if diff(f) ~= 0
            i = 1;
            fun = matlabFunction(f); % Transforma una expresion a una funcion handle.
            
            fdiff = diff(f);
            fdiffun = matlabFunction(fdiff);  % Transforma una expresion a una funcion handle.
            
            h = fun(a) / fdiffun(a);
            c = a - h;

            disp('-------------------------------------------------------------------------------');
            fprintf('| i |     a    |     c    |     h     |    f(a)    |    f"(a)   |    f(c)    | \n', i, a, c, h, fun(a), fdiffun(a), fun(c)); 
            disp('-------------------------------------------------------------------------------');
            
            while (abs(fun(c)) > errorfun) && (abs(h) > tolerancia) && (i <= maxiter)

                h = fun(a) / fdiffun(a);
                c = a - h;
                a = c;
                
                % Descomenta esto para ver los datos en detalle referente al resultado (ULTIMA ITERACION).
                fprintf('| %1.0f | %f | %f |  %f  |  %f  |  %f  |  %f   \n', i, a, c, h, fun(a), fdiffun(a), fun(c)); 
                
                i = i + 1;

            end
            
            outputValue = c;
        else
            disp(diff(f));
            disp('No se puede continuar, no se puede dividir entre cero.');
        end
end
