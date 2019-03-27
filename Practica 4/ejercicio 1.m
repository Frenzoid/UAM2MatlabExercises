function outputValue = Biseccion(f, a, b, tolerancia, errorfun, maxiter)

    i = 0;
    while ~(abs((a-b)/2) <= tolerancia) && ~(abs((b - a)/2) <= errorfun) && ~(i == 4)
        c = (a + b) / 2;
        if f(a) * f(b) < 0 
            b = c;
            a = a;
        else
            a = c;
            b = b;
        end
        fprintf('i = %.2f, a = %.2f, c = %.2f, b = %.2f, (b-a)/2 = %.2f \n', i, a, c, b, (b - a)/2); 
        i = i + 1;
    end

end

