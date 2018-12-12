function [X_norm] = featureNormalizeVal(X, minX, maxX)

X_norm = X;


numerator = bsxfun(@minus, X_norm, maxX);
denomenator = maxX-minX;
X_norm = bsxfun(@rdivide, numerator, denomenator);


end
