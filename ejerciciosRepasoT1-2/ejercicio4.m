% Ejercicio 4.

vector = input('Dame el vector a procesar: ');
rangoLimite = input('Dame el rango limite: ');

% Si es mayor que el rango, lo recortamos (truncar)
if length(vector) > rangoLimite
    vector = vector(1:rangoLimite);
end

for i = 1:length(vector)
   if vector(i) < 0 
       vector(i) = 0;
   end
end

disp(vector);
