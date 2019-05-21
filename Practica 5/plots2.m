x = [0, 2, 6, 12, 15];
y = [0, 4, 6, 7, 1];

xx = linspace(0, 15, 100);
yy = spline(x, y, xx);

plot(x,y, 'g')
hold on;

plot(xx, yy, 'r');
