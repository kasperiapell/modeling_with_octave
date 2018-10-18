% Calculates the classical finite-sample OLS coefficients
% Assumptions: 
% Accepts the data matrix X and dependent variable vector y

function [beta, epsilon] = finite_sample_OLS(X, y)
  beta = inv(X' * X) * X' * y; 
  epsilon = y - X * beta; 
end 