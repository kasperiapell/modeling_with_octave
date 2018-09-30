function arma_process(phi, y, theta)
  for i = 1:9
    epsilon = unifrnd(-1,1);
    generate_arma(phi, y, epsilon, theta, 100, [], i);
  end
end 

function generate_arma(phi, y_minus, epsilon_minus, theta, n, v, i)
  epsilon = unifrnd(-1,1);
  y = phi * y_minus + epsilon + theta * epsilon_minus;
  n = n - 1;
  v = [v y];
  
  if n == 0
    subplot(3,3,i);
    plot(1:length(v), v, "linewidth", 1.1);   
  end 
  
  generate_arma(phi, y, epsilon, theta, n, v, i);
end