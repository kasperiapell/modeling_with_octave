% Custom function for a projection of x = (1, 1, 1) 
% into vector space S spanned by x_1 = (1, 2, 3) and x_2 = (1, 1, -1).
% In other words, finds the point in S that is closest in Euclidean
% distance to the point x = (1, 1, 1).

function y = projection_matrix(X, x)
 P = X * inv(X' * X) * X'; 
 y = P * x; 
end 