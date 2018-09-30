% Model from Alligood, Sauer, and Yorke (1997)

function logistic_growth(x, n, v)
  g = 2 * x * (1 - x);
  n = n - 1;
  v = [v g];

  if n == 0
    plot(1:length(v), v, "linewidth", 2)   
  end 
  
  logistic_growth(g, n, v);
end 
