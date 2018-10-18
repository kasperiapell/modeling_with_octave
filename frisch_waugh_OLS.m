% The Frisch-Waugh way to calculate the classical OLS coefficients
% https://en.wikipedia.org/wiki/Frisch%E2%80%93Waugh%E2%80%93Lovell_theorem

function [B2_1, B2_2]=frisch_waugh_OLS(X, y) 
    n1 = floor(length(X) / 2); 
    n2 = length(X) - n1; 
    X1 = X(:,1:n1);
    X2 = X(:,(n1 + 1):(n1 + n2)); 
    P1 = X1 * inv(X1' * X1) * X1'; 
    M1 = eye(n1) - P1; 
    X2F = M1 * X2; 
    yF = M1 * y; 
    
    B2_1 = inv(X2F' * X2F) * X2F' * yF; 
    B2_2 = X2F \ yF; 
end 