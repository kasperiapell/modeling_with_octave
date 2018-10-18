% Calculates the classical t-ratio value

% beta_hat : sample estimate
% beta_bar : hypothesised balue
% SE       : standard error of the sample estimate

function t = t_test(beta_hat, beta_bar, SE) 
  t = (beta_hat - beta_bar) / SE; 
end 