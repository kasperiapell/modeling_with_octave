% Vector-valued random walk in two dimensions 

function random_walk(x,y,t,xv,yv)
  y_epsilon = unifrnd(-1,1);
  x_epsilon = unifrnd(-1,1);
  y = y + y_epsilon;
  x = x + x_epsilon;
  yv = [yv y];
  xv = [xv x];
  
  t = t - 1;
  
  if (t == 0)
    u = -11.5:0.16:11.5;
    v = zeros(231);
    plot(xv,yv, "linewidth", 2);
    hold on;
    plot(u, v, "color", "black", "linewidth", 1.1); % y-axis
    hold on;
    plot(v, u, "color", "black", "linewidth", 1.1); % y-axis
    axis([-10 10 -10 10]);
  else
    random_walk(x,y,t,xv,yv);
  end
  
end 