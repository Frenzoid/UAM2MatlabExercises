function outputValue = RegulaFalsi1(f, a, b, tolerancia, errorfun, maxiter)
    % Ejercicio 3. IGUAL QUE SECANTE PERO ENVEZ DE B = C, SE APLICA BOLZANO.
           
        i = 1;

        h = ( f(a) * (b-a) ) / ( f(b) - f(a) );
        c = a - h;
        
        fprintf('| %1.0f | %f | %f | %f | %f | %f | %f | %f | \n', i, a, b, c, h, f(a), f(b), f(c));

        if (f(a) * f(c)) < 0 
            b = c;
        else
            a = c;
        end
        
        while ( abs( f(c) ) > errorfun ) && ( abs(h) > tolerancia ) && (i < maxiter)
            i = i + 1;

            h = ( f(a) * (b-a) ) / ( f(b) - f(a) );
            c = a - h;
            
            fprintf('| %1.0f | %f | %f | %f | %f | %f | %f | %f | \n', i, a, b, c, h, f(a), f(b), f(c));

            if (f(a) * f(c)) < 0 
                b = c;
            else
                a = c;
            end
            
        end
        
        outputValue = c;
end
