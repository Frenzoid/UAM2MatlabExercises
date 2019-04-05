function outputValue = Biseccion2(f, a, b, tolerancia, errorfun, maxiter)
   % Ejercicio 2.
    if f(a) * f(b) < 0
        
        DATA.length = 1; % Inicializamos el contador de "objetos" (y a su vez definimos el objeto padre DATA).
        i = 1; 
        rango = abs(b - a);
        c = (a + b) / 2;
       
        
        while ~(abs(f(c)) <= errorfun) && ~(rango <= tolerancia) && i < maxiter && i < 4

            c = (a + b) / 2; 
            rango = abs(b - a) / 2;

            
            if f(a) * f(b) < 0 
                b = c;         
            else
                a = c;
            end
            
            DATA.a(i) = a; % valor de inicio del intervalo en esta iteracion.
            DATA.b(i) = b; % valor de final del intervalo en esta iteracion.
            DATA.c(i) = c; % valor de c.
            DATA.i(i) = i; % valor del contador.
            DATA.h(i) = rango;  % valor del rango.
            DATA.length = DATA.length + 1; % incrementamos la cantidad de datos.
            
            i = i + 1;
        end
               
        disp('------------------------------------------');
        fprintf('| i |   a  |   c  |   b  |   (b-a)/2  | \n', i, a, c, b, rango); 
        disp('------------------------------------------');
        
        for i = 1:DATA.length
            fprintf('| %1.0f | %.2f | %.2f | %.2f |    %.2f    | \n', i, a, c, b, rango);         
        end
        
        outputValue = c; 
    else
        disp('Intervalo no valido');
    end
end
