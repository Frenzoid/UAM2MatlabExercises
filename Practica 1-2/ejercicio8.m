% Ejercicio 8.

for a = 1:20
  for b = a:20 % Para evitar numeros repetidos (eje: 3 + 4 y 4 + 3), empezamos el segundo bucle (b) desde donde lo dejo el anterior bucle (a).
    for c = 1:20
      if (a^2 + b^2) == c^2 
        fprintf('%.2f^2 + %.2f^2 == %.2f^2 \n',a, b, c)
      end
    end
  end
end
