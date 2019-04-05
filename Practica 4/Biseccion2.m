function outputValue = Biseccion2(f, a, b, tolerancia, errorfun, maxiter)
   % Ejercicio 2.
    if f(a) * f(b) < 0
        
        DATA.length = 1; % Inicializamos el contador de "objetos" (y a su vez definimos el objeto padre DATA).
        i = 1; 
        h = abs(b - a);
        c = (a + b) / 2;
       
        
        while ~(abs(f(c)) <= errorfun) && ~(h <= tolerancia) && i < maxiter && i < 4

            c = (a + b) / 2; 
            h = h / 2;

            if f(c) == 0 % Si nos topamos con 0 (valor exacto), entonces ya hemos acabado.
                addToStruct(a, b, c, i, h);
                break
            end
            
            if f(a) * f(b) < 0 
                b = c;         
            else
                a = c;
            end
            
            addToStruct(a, b, c, i, h);
            
            i = i + 1;
        end
               
        % Cabeza de la tablita (solo se imprime una vez).
        disp('------------------------------------------');
        fprintf('| i |   a  |   c  |   b  |   (b-a)/2  | \n', i, a, c, b, rango); 
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

function void = addToStruct(aval, bval, cval, ival, hval)

   DATA.a(i) = aval; % valor de inicio del intervalo en esta iteracion.
   DATA.b(i) = bval; % valor de final del intervalo en esta iteracion.
   DATA.c(i) = cval; % valor de c.
   DATA.i(i) = ival; % valor del contador.
   DATA.h(i) = hval;  % valor del rango.
   DATA.length = DATA.length + 1; % incrementamos la cantidad de datos.

end
