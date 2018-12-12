function [X_norm, minX, maxX] = featureNormalize(X)

X_norm = X;
global maxX minX
maxX = max(X);
minX = min(X);



numerator = bsxfun(@minus, X_norm, maxX);
denomenator = maxX-minX;
X_norm = bsxfun(@rdivide, numerator, denomenator);


end
