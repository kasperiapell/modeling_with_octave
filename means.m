% Tinkering with different ways to summarise a data set in a single value 

function s = means(v)
  n = length(v); % Number of elements in v
  i = ones(n, 1); % Vector of ones for dot product with v (for sum of elements in v) 
  s = dot(i, v); % Sum of values in v (i.e. v1 + v2 + ... + vn) 
  p = prod(v); % Product of values in v (i.e. v1 * v2 * ... * vn)
  maxv = max(v); 

  a = s / n; % Arithmetic mean: multiply a by n to get total sum of elements
  b = dot(v.^(1/n), i); 
  c = (p)^(1/n) / n; % Earlier p / n produced large values
  d = log((s)^n);
  e = norm(v, inf) / (norm(v, 1) / n); 
  f = log(p) / log(a); 
  g = (p)^(1/n); % Geometric mean: raise g to power of n to get the product of elements
  h = n / dot(v.^(-1), i); % Harmonic mean
  i = (maxv^n) / p; 
  j = (s)^(1/n); 
  k = n / (p)^(1/n); 
  l = log(s) / log(n); 
  o = n^(1/2) / (s)^(1/n); 
  p = n^(1/2) / (p)^(1/n); 
  q = (n * maxv) / s; 
  r = maxv / ((p)^(1/n)); 
  s = struct('a', a, 'b', b, 'c', c, 'd', d, 'e', e, 'f', f, 'g', g, 'h', h, 'i', i, 'j', j, 'k', k, 'l', l, 'o', o, 'p', p, 'q', q, 'r', r); 
end 