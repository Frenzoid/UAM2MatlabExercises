function outputValue = Newton1(f, a, tolerancia, errorfun, maxiter)
    % Ejercicio 4.
        syms x;
        % Esta funcion recibe una expresion y no una fun. simbolica como las demas.
        % Para hacer la derivada usamos la expresion, para procesar un valor con 
        %   dicha expression usamos la funcion handle que nos crea
        %   matlabFunction(); (tambien podriamos haber usado solve con == a.
        
        
        if diff(f) ~= 0
            i = 1;
            fun = matlabFunction(f); % Transforma una expresion a una funcion handle.
            
            fdiff = diff(f);
            fdiffun = matlabFunction(fdiff);  % Transforma una expresion a una funcion handle.
            
            h = fun(a) / fdiffun(a);
            c = a - h;

            disp('------------------------------------');
            fprintf('| i |   a  |   c  |     h      | \n', i, a, c, h); 
            disp('------------------------------------');
            
            while (abs(fun(c)) > errorfun) && (h > tolerancia) && (i <= maxiter)

                h = fun(a) / fdiffun(a);
                c = a - h;
                a = c;
                
                % Descomenta esto para ver los datos en detalle referente al resultado (ULTIMA ITERACION).
                fprintf('| %1.0f | %.2f | %.2f |    %.2f    | \n', i, a, c, h); 
                
                i = i + 1;

            end
            
            outputValue = c;
        else
            disp(diff(f));
            disp('No se puede continuar, no se puede dividir entre cero.');
        end
end
