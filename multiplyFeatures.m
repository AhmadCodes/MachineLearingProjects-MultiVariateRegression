function [x,featureMultiplier] = multiplyFeatures(X, featureMultiplier)
% call this function before determination of size of theta.

if nargin == 1 || isempty(featureMultiplier)
    featureMultiplier = 1;
end
featureMultiplier = round(featureMultiplier);

x = X;

if featureMultiplier <= 1
    x = X;
    
elseif featureMultiplier >1
    
   
    
    for power = 2:featureMultiplier
       
        poly = X(:,[1,2,3,5,6,8,9]).^power;
        x = [x,poly];
        
    end
    
end


end