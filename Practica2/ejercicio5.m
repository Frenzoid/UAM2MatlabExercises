% Ejercicio 5.

syms x;
ezplot(taylor(sin(x), x, pi / 6, 'order', 1), [0 pi, 0.3]);
title('Tayler de orden 1');

figure();
ezplot(taylor(sin(x), x, pi / 6, 'order', 2), [0 pi, 0.3]); 
title('Tayler de orden 2');

figure();
ezplot(taylor(sin(x), x, pi / 6, 'order', 5), [0 pi, 0.3]); 
title('Tayler de orden 5');

figure();
ezplot(taylor(sin(x), x, pi / 6, 'order', 8), [0 pi, 0.3]); 
title('Tayler de orden 8');
