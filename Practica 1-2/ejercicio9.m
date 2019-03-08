function outputValue = ejercicio9()
% Ejercicio 9.

  n = input('Dime hasta que numero: ')
  r = 0
  i = 0;

  while i ~= n
    i = i + 1; % En Octave se puede usar el operador "i++" para sumar 1 a i, MatLab por desgracia no lo soporta y hay que hacerlo a mano "i = i + 1".
    r = i ^ 2 + r;
  end

  outputValue = r;

end
