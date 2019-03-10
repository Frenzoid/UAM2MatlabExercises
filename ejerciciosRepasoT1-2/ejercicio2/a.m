function outputValue = a(a, b)
% Ejercicio 2 / a.

    outputValue = false;

    % mod devuelve el resto de la división de un numero entre otro.
    %  si el resto es 0, entonces son multiplos.
    if mod(a, b) == 0 | mod(b, a) == 0
        outputValue = true;
    end
    
end
