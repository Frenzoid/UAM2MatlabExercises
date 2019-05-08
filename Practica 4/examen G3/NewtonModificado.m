function [datos, raiz] = NewtonModificado(expression, a, tolerancia, maxiter)
    % Creamos las funciones handle normales y derivadas a partir de la funcion simbolica.
    fun = matlabFunction(expression);
    fun1 = matlabFunction(diff(expression, 1));
    fun2 = matlabFunction(diff(expression, 2));


    % Creamos la lógica del bucle.
    if (((fun1(a))^2 - fun(a) * fun2(a))) ~= 0
        
        i = 1;
        h = (fun(a) * fun1(a)) / ((fun1(a))^2 - fun(a) * fun2(a));
        c = a - h;

        datosEnProceso.i(i) = i;
        datosEnProceso.x_i(i) = a;
        datosEnProceso.fx_i(i) = fun(a);
        datosEnProceso.f1x_i(i) = fun1(a);
        datosEnProceso.f2x_i(i) = fun2(a);
        datosEnProceso.h(i) = h;

        a = c;

        while (abs(h) > tolerancia && i <= maxiter)

            if (((fun1(a))^2 - fun(a) * fun2(a))) == 0
                disp("La parte inferior de la division da 0, no se puede dividir entre 0, rompiendo bucle...");
                break;
            end
            
            i = i + 1;
            h = (fun(a) * fun1(a)) / ((fun1(a))^2 - fun(a) * fun2(a));
            c = a - h;

            datosEnProceso.i(i) = i;
            datosEnProceso.x_i(i) = a;
            datosEnProceso.fx_i(i) = fun(a);
            datosEnProceso.f1x_i(i) = fun1(a);
            datosEnProceso.f2x_i(i) = fun2(a);
            datosEnProceso.h(i) = h;

            a = c;

        end

        datos = datosEnProceso;
        raiz = c;
        
    else
        disp("La parte inferior de la division da 0, no se puede dividir entre 0, saliendo...");
    end

end

