function outputValue = Biseccion(f, a, b, tolerancia, errorfun, maxiter)

    i = 0;
    DATA.length = 0;
    
    while ~(abs((a-b)/2) <= tolerancia) && ~(abs((b - a)/2) <= errorfun) && ~(i == 4)
        
        c = (a + b) / 2;
        
        if f(a) * f(b) < 0 
            b = c;
            a = a;
        else
            a = c;
            b = b;
        end
        
        DATA.a(i) = a;
        DATA.b(i) = b;
        DATA.c(i) = c;
        DATA.i(i) = i;
        DATA.h(i) = (b - a)/2;
        DATA.length = DATA.length + 1;

        i = i + 1;
    end
    
    for i = 1:length(DATA.length)
        fprintf('i = %.2f, a = %.2f, c = %.2f, b = %.2f, (b-a)/2 = %.2f \n', DATA.i(i), DATA.a(i), DATA.c(i), DATA.b(i), DATA.h(i)); 
    end
end
