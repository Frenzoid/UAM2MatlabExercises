function outputValue = Biseccion1(f, a, b, tolerancia, errorfun, maxiter)
    % Ejercicio 1.
    
    if (f(a) * f(b)) < 0 
        
        i = 1;
        c = (a + b) / 2;
        h = abs(b - a) / 2;

        fprintf('| %1.0f | %f | %f | %f | %f | %f | %f | %f | \n', i, a, b, c, h, f(a), f(b), f(c));

        if (f(a) * f(c)) < 0 
            b = c;
        else
            a = c;
        end
        
        while (abs(f(c)) > errorfun) && (h > tolerancia) && (i <= maxiter)

            i = i + 1;
            c = (a + b) / 2; 
            h = abs(b - a) / 2;
            
            fprintf('| %1.0f | %f | %f | %f | %f | %f | %f | %f | \n', i, a, b, c, h, f(a), f(b), f(c));
           
            if (f(a) * f(c)) < 0 
                b = c;
            else
                a = c;
            end

        end
        
        outputValue = c;
    else
        disp(f(a));
        disp(f(b));
        disp('Intervalo no valido');
    end
end

