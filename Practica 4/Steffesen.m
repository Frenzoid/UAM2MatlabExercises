afunction outputValue = Steffesen(f, a, tolerancia, errorfun, maxiter)
    % Ejercicio 6.
    hfun = @(x)(f(x))^2 / f(x + f(x)) - f(x);

    i = 1;
    h = hfun(a);
    c = a - h;

    disp('----------------------------');
    fprintf('| i |  c  |     h      | \n', i, c, h); 
    disp('----------------------------');

    a = c;
    while (abs(f(c)) > errorfun) && (h > tolerancia) && (i < maxiter)
        i = i + 1;
        h = hfun(a);
        c = a - h;
        
        fprintf('| %1.0f | %.2f | %.2f |    %.2f    | \n', i, a, c, h); 

        a = c;

    end

    outputValue = c;
end
