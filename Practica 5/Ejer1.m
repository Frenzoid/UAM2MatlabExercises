%Primero calcular el polinomio con el polyfit
f = @(x) x^2;

x = [0,1,2,3,4,5,6,7,8,9,10];

%He calculado el valor de y, sustituyendo x en la funcion, pero me daba un
%error asi que llame y1 a lo que habia hecho, y luego con double ya
%"calculé" 'y'. Si no me daba errores.

y1 = subs(f,x);
y = double(y1);
xp = [1 : 0.01 : 4];

a = polyfit(x,y,3);
yp = polyval(a, xp);
subplot(1,2,1), plot (x,y,'og', xp, yp, '-')

yL = lagrange (xp,x,y);
%hold on
subplot (1,2,2), plot(x,y,'ob',xp,yL,'-r')
