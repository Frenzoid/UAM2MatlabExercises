function outputValue = RegulaFalsi1(f, a, b, tolerancia, errorfun, maxiter)
    % Ejercicio 2.
           
        i = 1;
        
        if abs(f(a)) > abs(f(b)) % Si f(a) es mayor que f(b) intercambiamos a por b, y b por a.
            bridgeVar = a; % Variable que usaremos de puente para intercambiar a y b dentro del bucle.
            a = b;
            b = bridgeVar;
            disp('    |       A <=> B       |                     |     f(a) <=> f(b)     |');
        end
        
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

            if abs(f(a)) > abs(f(b))
                bridgeVar = a;
                a = b;
                b = bridgeVar;
                disp('    |       A <=> B       |                     |     f(a) <=> f(b)     |');
            end
            
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
