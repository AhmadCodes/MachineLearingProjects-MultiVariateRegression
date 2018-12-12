function [theta, J_history,J_val_history] = gradientDescentRegularized(X, y, theta, alpha, num_iters)

global Xval yval lambda
lambda = 1; %this value of lambda is set after analysis of different models
m = length(y); % number of training examples

J_history = zeros(num_iters, 1);
J_val_history = zeros(num_iters, 1);


h = waitbar(0,'Initializing Gradien Descent');
for iter = 1:num_iters
    
    theta(2:end) = theta(2:end).*(1-alpha*lambda/m) - (alpha/m) .* ( ((theta'*X')' - y)' * X(:,2:end) )';
    theta(1) =  theta(1) - (alpha/m) .* sum( ((theta'*X')' - y) ) ;
    
    % some values for fancy waitbar
    percent = round((iter/num_iters)*100);
    waitbar(percent/100,h,sprintf('%d%% Gradient Descent Completed...',percent))
    
    % Save the cost J in every iteration
    J_history(iter) = computeCostRegularized(X, y, theta);
    J_val_history(iter) = computeCostRegularized(Xval, yval, theta);
    
end

close(h);
end
