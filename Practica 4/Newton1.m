function outputValue = Newton1(f, a, tolerancia, errorfun, maxiter)
    % Ejercicio 4. ¡¡RECIBE UNA EXPRESION SIMBOLICA!!, NO UNA FUNCION HANDLE
    % COMO LAS DEMAS
    syms x;

    i = 1;

    fun = matlabFunction(f); % Transforma una expresion a una funcion handle.

    fdiff = diff(f);
    fdiffun = matlabFunction(fdiff);  % Transforma una expresion a una funcion handle.

    if fdiffun(a) ~= 0
        h = fun(a) / fdiffun(a);
        c = a - h;

        disp('-------------------------------------------------------------------------------');
        fprintf('| i |     a    |     c    |     h     |    f(a)    |    f"(a)   |    f(c)    | \n'); 
        disp('-------------------------------------------------------------------------------');
        fprintf('| %1.0f | %f | %f |  %f  |  %f  |  %f  |  %f   \n', i, a, c, h, fun(a), fdiffun(a), fun(c)); 

        a = c;

        while (abs(fun(c)) > errorfun) && (abs(h) > tolerancia) && (i < maxiter)
            i = i + 1;

            if (fdiffun(a) == 0)
                fprintf('f"(a) = f(%f) = %s == 0 \n', a, fdiff);
                disp('No se puede continuar, no se puede dividir entre cero.');
                break
            end

            h = double(fun(a) / fdiffun(a));
            c = double(a - h);

            fprintf('| %1.0f | %f | %f |  %f  |  %f  |  %f  |  %f   \n', i, a, c, h, fun(a), fdiffun(a), fun(c)); 

            a = c;
        end

        outputValue = c;
    else
        fprintf('f"(a) = f(%f) = %s == 0 \n', a, fdiff);
        disp('No se puede continuar, no se puede dividir entre cero.');
    end
end
