% Finds a numerical solution to a two-period intertemporal optimisation 
% problem 

function x = two_period_intertemporal_optimisation
    beta = 0.5;         % Discount factor
    gamma = 0.8;  
    sigma = 0.6;        % Must not equal one
    wage = 0.6;         % wage rate (for both periods)
    y = 0.7;            % Initial income
    r = 0.5;            % Interest rate 
    
    x0 = [0.5, 0.5, 0.5];
    x = fsolve(@steady_state, x0); 

    function F = steady_state(x)
        s = x(1); 
        n = x(2); 
        
        c1 = wage * n + y - s; 
        c2 = (1 + r) * s; 
        
        [~, duc1, dul] = utility(c1, n);
        [~, duc2, ~] = utility(c2, 0); 
                
        F(1) = duc1 - beta * duc2; 
        F(2) = dul - duc1 * wage;  
     
    end

    function [u, duc, dul] = utility(c, n) 
        if sigma == 1
          u = gamma * log(c) + (1 - gamma) * log(1 - n); 
          duc = gamma / c; 
          dul = (1 - gamma) / (1 - n); 
        else
          u = (c^(gamma) * (1 - n)^(1 - gamma))^(1 - sigma) / (1 - sigma);
          duc = (gamma * c^(gamma - 1) * (1 - n)^(1 - n))^(1 - sigma) / (1 - sigma);
          dul = ((1 - gamma) * c^(gamma) * (1 - n)^(-gamma))^(1 - sigma) / (1 - sigma); 
        end 
    end 
end 