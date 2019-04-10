function outputValue = Biseccion2(f, a, b, tolerancia, errorfun, maxiter)
   % Ejercicio 1.5.
    if f(a) * f(b) < 0
        
        DATA.length = 1; % Inicializamos el contador de "objetos" (y a su vez definimos el objeto padre DATA).
        i = 1; 
        h = abs(b - a);
        c = (a + b) / 2;
       
        
        while ~(abs(f(c)) <= errorfun) && ~(h <= tolerancia) && i <= maxiter && i <= 4

            c = (a + b) / 2; 
            h = h / 2;

            if f(c) == 0 % Si nos topamos con 0 (valor exacto), entonces ya hemos acabado.
                DATA.length = i; % cantidad de objetos.   
                DATA.a(i) = a; % valor de inicio del intervalo en esta iteracion.
                DATA.b(i) = b; % valor de final del intervalo en esta iteracion.
                DATA.c(i) = c; % valor de c.
                DATA.i(i) = i; % valor del contador.
                DATA.h(i) = h; % valor del rango.
   
                break
            end
            
            if f(a) * f(b) < 0 
                b = c;         
            else
                a = c;
            end

            
            DATA.length = i; % cantidad de objetos.
            DATA.a(i) = a; % valor de inicio del intervalo en esta iteracion.
            DATA.b(i) = b; % valor de final del intervalo en esta iteracion.
            DATA.c(i) = c; % valor de c.
            DATA.i(i) = i; % valor del contador.
            DATA.h(i) = h; % valor del rango.
            
            i = i + 1;
        end
               
        % Cabeza de la tablita (solo se imprime una vez).
        disp('------------------------------------------');
        fprintf('| i |   a  |   c  |   b  |   (b-a)/2  | \n', i, a, c, b, h); 
        disp('------------------------------------------');
        
        for i = 1:DATA.length
            % Cuerpo de la tablita (se imprime por cada iteracion).
            fprintf('| %1.0f | %.2f | %.2f | %.2f |    %.2f    | \n', DATA.i(i), DATA.a(i), DATA.c(i), DATA.b(i), DATA.h(i));         
        end
        
        outputValue = c; 
    else
        disp('Intervalo no valido');
    end
end
