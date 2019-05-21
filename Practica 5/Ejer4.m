syms x y;
x = [0,1,2,3,4];
y = [1,-1,2,1,0];

A = spline(x,y);
c = A.coefs(3, :);% Coecientes de la funcion cubico
xx = linspace(-1, 10); % Dominio
yy = c(1) * (xx - 2).^3 + c(2) * (xx - 2).^2 + c(3) * (xx - 2) + c(4);
 
y2 = polyval(c, xx, [], [2, 1]);
y3 = ppval(A, xx);
plot(xx, yy, xx, y3,' k-');
