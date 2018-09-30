% Accepts a Markov chain in matrix form where *rows* are the probability
% distributions to enter a given state 

function markovChain(A, p1, n)
  v = 1:n; 
  ind = 1:length(p1); % p1 is initial probability vector
  r = randsrc(1, 1, [ind; p1]); 
  v(1) = r; 
  
  for i = 1:n 
    r1 = randsrc(1, 1, [ind; A(r, :)]); 
    v(i) = r1; 
  end 
  
  stairs(v, 'linewidth', 1); 
  axis([-5 (n + 5) 0 (length(p1) + 1)]);
  grid on; 
  
end  