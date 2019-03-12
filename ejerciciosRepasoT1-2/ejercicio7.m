syms x y;

f = (8 + y) * (10 + x) * 1000;
fy = 100 / x;

f = subs(f, y, fy);

f1 = diff(f);
fcrits = double(solve(f1 == 0));

fcrits = fcrits(2); % El valor positivo.

fprintf('Area del solar: %.2f m2, precio del solar %.2f eur. \n',subs(f,x,fcrits) / 1000, subs(f,x,fcrits));
 
    
