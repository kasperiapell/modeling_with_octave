% Calculates the classical finite-sample OLS coefficients

% Assumptions: 
% 1) Our model is y = XB + e
% 2) E[e_i | X] = 0
% 3) Rank X = K where X is (n x K)
% 4) E(e_i^2 | X) = sigma^2 < 0

% Accepts the data matrix X and dependent variable vector y
  
% An alternative way of calculating beta
    % Sxx = (1/n) * X' * X;
    % Sxy = (1/n) * X' * y;
    % beta = inv(Sxx) * Sxy; 

function [beta_hat, epsilon_hat, t_values] = finite_sample_OLS(X, y)
  [n, K] = size(X); 
  beta_hat = inv(X' * X) * X' * y;
  epsilon_hat = y - X * beta_hat; 
  y_hat = X * beta_hat; 
  
  s2 = dot(epsilon_hat, epsilon_hat) / (n - K); % OLS estimate of sigma^2
  s = sqrt(s2); % Standard error of the regression 
  R2_u = dot(y_hat, y_hat) / dot(y, y); % Uncentered R^2
  Var_hat_beta_given_X = s2 * inv(X' * X); 
  SE_vector = sqrt(diag(s2 * inv(X' * X))); 
  
  % Calculates t-value vector with null hypotheses of beta_k = 0
  t_values = beta_hat ./ SE_vector; 
  
end 