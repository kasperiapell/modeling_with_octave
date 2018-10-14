% Describes a feedback loop between A and B where any increase in B will
% increase A by alpha, and b will in turn be increased by A times alpha
% squared, and so on, resulting in an infinite geometric series, the sum of
% which we can calculate. 

function s = infinite_feedback_series(dA, dB, alpha) 
  if dA == 0
    init_A = dB * alpha; 
  else 
    init_A = dA + dB * alpha; 
  end 
  
  if dB == 0
    init_B = dA * alpha; 
  else 
    init_B = dB + dA * alpha; 
  end 

  Final_A = 0.5 * (init_A / (1 - alpha));  
  Final_B = 0.5 * (init_B / (1 - alpha)); 
  
  s = struct('Final_A', Final_A, 'Final_B', Final_B); 
end 