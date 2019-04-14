function outputValue = RegulaFalsi1(f, a, b, tolerancia, errorfun, maxiter)
    % Ejercicio 3.
         % La unica diferencia entre secante y regula falsi es que en lugar de poner b = c; pones la regla de Bolzano.
           
        i = 1;
        
        if abs(f(a)) > abs(f(b)) % Si f(a) es mayor que f(b) intercambiamos a por b, y b por a.
            bridgeVar = a; % Variable que usaremos de puente para intercambiar a y b dentro del bucle.
            a = b;
            b = bridgeVar;
        end
        
        h = ( f(a) * (b-a) ) / ( f(b) - f(a) );
        c = a - h;
       
        if f(a) * f(c) < 0
                b = c; 
        else
            a = c;
        end

        fprintf('| %1.0f | %f | %f | %f | %f | %f | %f | %f | \n', i, a, b, c, h, f(a), f(b), f(c));
       

        
        while ( abs( f(c) ) > errorfun ) && ( abs(h) > tolerancia ) && (i < maxiter)
            i = i + 1;

            if abs(f(a)) > abs(f(b))
                bridgeVar = a;
                a = b;
                b = bridgeVar;
            end
            
            h = ( f(a) * (b-a) ) / ( f(b) - f(a) );
            c = a - h;
            
            if f(a) * f(c) < 0
                b = c; 
            else
                a = c;
            end

            fprintf('| %1.0f | %f | %f | %f | %f | %f | %f | %f | \n', i, a, b, c, h, f(a), f(b), f(c));
            
        end
        
        outputValue = c;
end
