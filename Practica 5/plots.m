t = [1 2 3 4 5 6 7 8];
p = [3 5 7 5 6 7 7 5];
x = 1 : 0.1 : 8;

y = interp1(t, p, x, 'spline'); 
plot(t, p, 'o', x, y); 
hold on;

y = interp1(t, p, x, 'nearest'); 
plot(x, y, 'g');

y = interp1(t, p, x, 'linear'); 
plot(x, y, 'r');

y = interp1(t, p, x, 'pchip'); 
plot(x, y, 'b');