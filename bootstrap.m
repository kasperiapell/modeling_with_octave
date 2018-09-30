% Plots uniformly distributed random numbers
% in 2D / 3D 

function bootstrap(n, p)
  q = 2 * p; 
  x = unifrnd(-p, p, [n, 1]);
  y = unifrnd(-p, p, [n, 1]);
  z = 10*sin(y);
  
  hold on;
  scatter3(x, y, z, 25, 'green', 'filled')
  
  axis([-q q -q q -q q]);
  grid on; 
end 