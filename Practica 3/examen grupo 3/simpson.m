function outputValue = simpson(f, a, b

  % Regla de Simpson.
  outputValue = (b-a)/6 * ( f(a) + 4 * f((a+b)/2)) + f(b);

end

