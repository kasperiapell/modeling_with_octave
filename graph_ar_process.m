% Simulates an AR process

function graph_ar_process(z, phi, y, n, v)
  for i = 1:z
    ar_process(phi,y,n,[],i)
  end 
end

function ar_process(phi, y, n, v, i)
    epsilon = unifrnd(-1,1);
    g = phi * y + epsilon;
    n = n - 1;
    v = [v g];

    if n == 0
      subplot(3,3,i)
      plot(1:length(v), v, "linewidth", 1.1)
  
    end 
  
    ar_process(phi, g, n, v, i);
end 