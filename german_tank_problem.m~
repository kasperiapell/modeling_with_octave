
% The method to estimate N from n observations
% collected from uniform distribution 1, 2, ..., N.
% Idea from the German Tank problem
% (https://en.wikipedia.org/wiki/German_tank_problem)

function estimates_for_N = german_tank_problem(N, n)
  sample = randi(N, [n, 1]); 
  m = max(sample); 
  k = length(sample);
  N1 = m * (1 - (1/k)) - 1; 
  
  average = mean(sample);
  N2 = 2 * average; 
  
  estimates_for_N = struct('Max_value_plus_average_gap', N1, 'Average_value_twice', N2);  
end  