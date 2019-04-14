function outputValue = Secant1(f, a, b, tolerancia, errorfun, maxiter)
    % Ejercicio 2.
           
        i = 1;
        
        h = ( f(a) * (b-a) ) / ( f(b) - f(a) );
        c = (a + b) / 2;
        
        fprintf('| %1.0f | %.2f | %.2f | %.2f |    %.2f    | \n', i, a, c, b, h); 
       
        if abs(f(a)) > abs(f(b)) % Si f(a) es mayor que f(b) intercambiamos a por b, y b por a.
            bridgeVar = a; % Variable que usaremos de puente para intercambiar a y b dentro del bucle.
            a = b;
            b = bridgeVar;
        end
        
        while ( abs( f(c) ) > errorfun ) && ( abs(h) > tolerancia ) && (i < maxiter)
            i = i + 1;

            h = ( f(a) * (b-a) ) / ( f(b) - f(a) );
            c = (a + b) / 2;

            fprintf('| %1.0f | %.2f | %.2f | %.2f |    %.2f    | \n', i, a, c, b, h); 

            if abs(f(a)) > abs(f(b))
                bridgeVar = a;
                a = b;
                b = bridgeVar;
            end
            
        end
        
        outputValue = c;
end
