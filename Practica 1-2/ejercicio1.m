% Ejercicio 1.

r = input('Dime el radio: ')
h = input('dime la altura: ')

perimetroCirculo = r * 2 * pi;
areaRectangulo = perimetroCirculo * h;
areaCirculo = pi * r^2;

areaCilindro = (areaCirculo * 2) + areaRectangulo; % Sumamos el area de los dos circulos, y el area del lado (que al fin y al cabo es un rectangulo)
volumenCilindro = areaCirculo * h;

volumenCilindro;
areaCilindro;
