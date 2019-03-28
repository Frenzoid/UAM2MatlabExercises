% Como todos ya sabemos que L = sin(sqrt(1 + diff(x)^2), a, b) dx, calcula la longitud de la curva y = sqrt(x^2)^3 para
%   el intervalo 0 < x < 4;

%Ejercicio 4

%Longitud de la curva de Y

syms x;
y = @(x)nthroot(x^2,3);  %Convertimos en función anónima
dy = diff(y);            %Hacemos la primera derivada
F = sqrt(1 + dy^2);      %Lo ponemos todo dentro de una variable igual que en la fórmula

%Mínimos y Máximos de X

a = 0;
b = 2;


L = int(F,x,a,b)        %Igualamos L a la integral definida de la variable F entre a y b 
