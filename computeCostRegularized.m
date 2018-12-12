function J = computeCostRegularized(X, y, theta)

global lambda
m = length(y); % number of training examples
SE = ((theta'*X')' - y).^2; 
J = (sum(SE) + (2*lambda*sum(theta(2:end).^2)) )/(2*m);

end
