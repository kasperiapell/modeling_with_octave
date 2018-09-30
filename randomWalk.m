% Real-valued random walk in 2D 

function randomWalk(w)
  x = (10);
  i = 1;    
  while w > 0
      i = i + 1;
      p = rand(1); 
      
      if p > 0.5 
        w = w + 0.05; 
      else
        w = w - 0.05;
      end 
      
      x(i) = w;
  end 
  plot(x);
end 