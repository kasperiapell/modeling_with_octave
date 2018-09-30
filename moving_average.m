function moving_average(theta)
  for i = 1:16
    e = unifrnd(-1,1);
    generate_moving_average(e, theta, 100, [], i);
  end 
end 

function generate_moving_average(epsilon_minus, theta, n, v, i)
  epsilon = unifrnd(-1,1);
  y = epsilon + theta * epsilon_minus;
  n = n - 1;
  v = [v y];
  
  if n == 0
    subplot(4,4,i);
    plot(1:length(v), v, "linewidth", 1.1);   
  end 
  
  generate_moving_average(epsilon, theta, n, v, i);
end 