function [datos, raiz] = Chebyshev(expression, a, tolerancia, maxiter)
    % Creando las funciones derivadas.
    fun = matlabFunction(expression);
    fun1 = matlabFunction(diff(expression, 1));
    fun2 = matlabFunction(diff(expression, 2));
    
    % Empieza el proceso.
    
    i = 1;
    
    datosEnProceso.length = i;
    datosEnProceso.i(i) = i;
    
    h = (fun(a)/fun1(a)) * (1 + ((fun(a) * fun2(a)) / 2 * (fun1(a))^2));
    c = a - h;
    
    datosEnProceso.a(i) = c;
    datosEnProceso.fa(i) = fun(a);
    datosEnProceso.f1a(i) = fun1(a);
    datosEnProceso.f2a(i) = fun2(a);
    datosEnProceso.h(i) = h;
    
    a = c;
    
    while (h > tolerancia && i < maxiter)
        i = i + 1;

        datosEnProceso.length = i;
        datosEnProceso.i(i) = i;

        h = (fun(a)/fun1(a)) * (1 + ((fun(a) * fun2(a)) / 2 * (fun1(a))^2));
        c = a - h;

        datosEnProceso.a(i) = c;
        datosEnProceso.fa(i) = fun(a);
        datosEnProceso.f1a(i) = fun1(a);
        datosEnProceso.f2a(i) = fun2(a);
        datosEnProceso.h(i) = h;

        a = c;
    end
    
    raiz = c;
    datos = datosEnProceso;

end

