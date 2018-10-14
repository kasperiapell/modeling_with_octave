% Plots the sums of infinite geometric series for several initial values

function infinite_geometric_series_sum(a, q)
  v = 0.90:0.002:0.998; 
  o = ones(1, 50); 

  for i = 1:4:20 
    x = (i .* o) ./ (o - v);
    plot(v, x, 'linewidth', 1.5);
    hold on; 
  end   
  
  title('The sums of an infinite geometric series for several intial values');
  xlabel('Ratio between consecutive terms');
  ylabel('Sum of the series');
  grid on; 
  % sum = a / (1 - q);
end 