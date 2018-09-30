
% Obtaining the Chi-square distribution from
% a transformation of a (standard normal) RV

function bootstrap_chi(n, p, mu, sigma)
  x = normrnd(mu, sigma, [n, n]);
  z = x.^2; 
  y = z * ones(n, 1); 
  
  subplot(3,3,p);
  histogram(y, 'facecolor', 'red');
  %scatter(x, y, 15, 'red', 'filled')
  
  grid on; 
end 