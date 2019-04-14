function [coordx, coordy] = Gradiante(f, iniciox, inicioy, salto, tolerancia, errorfun, maxiter)
    syms x y;
    
    % Metodo de la gradiante para una funcion de 2 INCOGNITAS, ACEPTA UNA EXPRESION SIMBOLICA.
    % Aún en pruebas.
    
    i = 1;
    
    fx(x,y) = diff(f, x); 
    fy(x,y) = diff(f, y);
    
    fx = matlabFunction(fx);
    fy = matlabFunction(fy);

    cx = iniciox - salto * fx(iniciox, inicioy);
    cy = inicioy - salto * fy(iniciox, inicioy);
    
    clactual = (cx^2) + (cy^2);
    clnext = ((iniciox - salto * fx(cx, cy))^2) + ((inicioy - salto * fy(cx, cy))^2);
    
    while ( abs(f(cx, cy)) > errorfun ) && ( abs(clnext - clactual) > tolerancia ) && (i < maxiter)
        i = i + 1;
        
        cx = cx - salto * fx(cx, cy);
        cy = cy - salto * fy(cx, cy);

        clactual = (cx^2) + (cy^2);
        clnext = ((cx - salto * fx(cx, cy))^2) + ((cy - salto * fy(cx, cy))^2);
    end
    
    coordx = cx;
    coordy = cy;
end

