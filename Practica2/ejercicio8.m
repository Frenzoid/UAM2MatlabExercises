% Ejercicio 8.

% Datos: Queremos la dimension para que en una ventana entre la mayor
% cantidad de luz. La ventana es un rectangulo en su parte inferior, y un
% semicirculo en su parte superior. Pero solo hay 12m de materiales.

    % Conclusión, necesitamos sacar su area maxima.
    
    % Radio del semicirculo: r.
    % Lado inferior del retangulo: 2r.
    % Lado lateral del rectangulo: y.
    % Permimetro = 12m.
    
    % 12 = Permimetro del rectangulo + Permimetro del circulo / 2 (porque es un semicirculo)
    % 12 = 2 * r + 2y + pi * r;

    % Area: f = 2 * r * y + (pi * r^2) / 2.

% Despejamos y:
    % y = (-2 * r + 12 - pi * r) / 2;
    
% Substituimos y en f:
    % 2 * r * (-2 * r + 12 - pi * r) / 2 + (pi * r^2) / 2.
    
% Simplificamos f:
    % -2 * r^2 + 12 * r - pi * r^2 / 2;
    
% Derivamos f:
    % -2 * 2 * r + 1 2 - pi * r;
    
% Igualamos a 0 y despejamos:
    % 12 - 4 * r = pi * r
    % 12 = 4 * r + pi * r
    % 12 = r * (4 + pi)
    % 12 / (4 + pi) = r
    
% La maxima dimension para que entre mas luz es 12 / (4 + pi).
   
    
    
 syms r y;
 
 f = 2 * r * y + (pi * r^2) / 2;
 f = subs(f, y, (-2 * r + 12 - pi * r) / 2);
 
 f = simplify(f);
 
 f1 = diff(f);
 
 critico = double(solve(f1 == 0));
 
 fprintf('La dimensión máxima es: %f \n', critico);
