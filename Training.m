function [theta, min_X, max_X,J_history,J_t] = Training(data, valData)
%% function definition:

% --define features and labels--
X = data(:, 1:end-1);y = data(:, end);
global Xval yval
Xval = valData(:,1:end-1);yval = valData(:,end);

%----determine lenght of data----
m = length(y);
m_val = length(yval);


%-------Multiply Features-------
global featureMultiplier
[X,featureMultiplier] = multiplyFeatures(X,4);
Xval = multiplyFeatures(Xval,featureMultiplier);

%---Scale features b/w 0 and 1--
fprintf('Normalizing Features ...\n');
[X, min_X, max_X] = featureNormalize(X);
Xval = featureNormalizeVal(Xval,min_X,max_X);


%----------Add Xo = 1-----------
X = [ones(m, 1), X];
Xval = [ones(m_val, 1), Xval];

%--initialize theta up to size--
n =  size(X,2);
theta = zeros(n, 1);

%-Parameters for Gradient Descent-
global alpha num_iters
alpha = 0.01;
num_iters = 5000;
errThresh = 1.0e-06;

%-------run gradient descent-------
[theta,J_history,J_t] = gradientDescentRegularized(X, y, theta, alpha, num_iters);