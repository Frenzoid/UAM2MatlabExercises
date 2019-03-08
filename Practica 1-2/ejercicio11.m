function [oV1, ov2] = ejercicio11(a,b,c)
% Ejercicio 11.

  det = sqrt(b^2 - 4*a*c);
  
  if det >= 0 
	oV1 = (-(b) + det) / (2 * a)
	ov2 = (-(b) - det) / (2 * a)
  else
	oV1 = NaN;
	ov2 = NaN;
  
end
