% Solves the neoclassical growth model in one of its most simplest formats,
% where the optimisation is conducted by a social planner. 

function x = basic_neoclassical_growth_model
    beta = 0.5; 
    gamma = 0.8; 
    alpha = 0.5; 

    function F = steady_state(x)
        F(1) = x(1) + x(3) - 1; 
        F(2) = (gamma - 1) / (1 - x(2)) - (gamma / x(1)) * (1 - alpha) * (1 / x(2));
        F(3) = (gamma / x(1)) - beta * (gamma / x(1)) * (1 / x(3)); 
    end

    x0 = [0.5, 0.5, 0.5];
    x = fsolve(@steady_state, x0); 
end 