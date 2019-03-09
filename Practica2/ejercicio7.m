% Ejercicio 7.

% Datos: Queremos construir una caja (cuadrado).
    % 3 * Longitud = Anchura    -> 3x , x.
    % Tapa & Base = 10eur * m^2 -> 10 * x.
   
    % Lados       = 6eur  * m^2 -> 6  * y;
    
    % Vol de la caja = 50; Vol = base * altura -> 50 = 3x * x * y;

% Formula sin substituir: 
    % Area Total: Area Tapas * 10 + Area Lados * 6;
    % Area Tapas: 3 * x^2 * 10 * 2;
    % Area Lados: 3 * x * y * 2 + x * y * 2;
    %
    % PRECIO TOTAL TAPAS: 10 * (3 * x^2 * 2);
    % PRECIO TOTAL LADOS: 6  * (3 * x * y * 2 + x * y * 2);
    %
    % PRECIO DEL AREA TOTAL: f = (10 * (3 * x^2 * 2)) + (6 * (3 * x * y * 2 + x * y * 2))
    
% Despejamos y:
    % 50 = 3x * x * y; 50 / (3 * x^2) = y;
    
% Substituimos y en f:
    % (10 * (3 * x^2 * 2)) + (6 * (3 * x * 50 / 3 * x^2 * 2 + x * y * 2));
    
% Simplificamos:
    % 800/x + 60*x^2; == 60x^2 + 800 * x ^ -1
    
% Derivamos: 
    % 120*x - 800/x^-2;

% Igualamos a 0 y despejamos:
    % raiz cubica de 80/12.

syms x y;

bases = 10 * (3 * x^2 * 2);
lados = 6 * (3 * x * y * 2 + x * y * 2);

bases = simplify(bases);
lados = simplify(lados);

f = bases + lados;
f = subs(f, y, (50 / (3 * x^2)));

f1 = diff(f);
disp(f1);

criticos = solve(f1 == 0);

fprintf('El minimo es: %f', criticos);
