function exponential_growth(x, n, v)
  g = 2 * x;
  n = n - 1;
  v = [v g];

  if n == 0
    plot(1:length(v), v, "linewidth", 2)  
  end 
  
  exponential_growth(g, n, v);
end 