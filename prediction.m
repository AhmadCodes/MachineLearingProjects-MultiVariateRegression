function yout = prediction(x1,x2,x3,x4,x5,x6,x7,x8,x9)
Xin = [x1,x2,x3,x4,x5,x6,x7,x8,x9];
global featureMultiplier 
Xin = multiplyFeatures(Xin,featureMultiplier);

global maxX minX theta


nume = (Xin-minX); 
denome = (maxX-minX);
Xin = nume./denome;
Xin = [1,Xin];
yout = Xin*theta;