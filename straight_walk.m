x = 0:0.1:10;
y = 0:0.1:10;
u = -10:0.1:10;
v = zeros(201);

plot(x,y, "linewidth", 2);
hold on;

plot(u, v, "color", "black", "linewidth", 1.1); % y-axis
hold on;

plot(v, u, "color", "black", "linewidth", 1.1); % y-axis
axis([-10 10 -10 10]);