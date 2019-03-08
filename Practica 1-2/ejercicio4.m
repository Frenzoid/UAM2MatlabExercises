% Ejercicio 4.

tamanyo = input('Dime el tamanyo de la pizza [1, 2 o 3]: ');
ingredientes = input('Dime la cantidad de ingredientes: ');

if tamanyo == 1
  fprintf('El precio es %.2f \n', 5 + (ingredientes * 1.5))
else
  if tamanyo == 2
    fprintf('El precio es %.2f \n', 8 + (ingredientes * 1.5))
  else
    if tamanyo == 3
      fprintf('El precio es %.2f \n', 12 + (ingredientes * 1.5))
    end
  end
end

clear;
