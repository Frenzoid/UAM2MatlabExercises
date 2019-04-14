function outputValue = Steffesen(f, a, tolerancia, errorfun, maxiter)
    % Ejercicio 6.
    
    i = 1;
    c = a;
    hfun = @(x)(f(x))^2 / f(x + f(x)) - f(x);
    h = hfun(c);

    disp('----------------------------');
    fprintf('| i |  c  |     h      | \n', i, c, h); 
    disp('----------------------------');

    while (abs(f(c)) > errorfun) && (h > tolerancia) && (i < maxiter)

        c = c - h(c);
        h = hfun(c);

        fprintf('| %1.0f | %.2f | %.2f |    %.2f    | \n', i, a, c, h); 


    end

    outputValue = c;
end
