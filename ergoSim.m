% The coin-toss game from http://www.ergodicityeconomics.com 

function ergoSim(numStep, w)
  x = zeros(1,numStep);
      
  for i = 1:numStep  
      p = rand(1); 
      
      if p > 0.5 
        w = w * 1.5; 
      else
        w = w * 0.6;
      end 

      x(i) = w;
  end 
  plot(x);
end 