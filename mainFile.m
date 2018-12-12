
%% Initialization
clear all ; close all; clc;

%% =================== Importing and Cleaning Data ===================

%--------Reading Data---------
filePath = 'Data set.xlsx';
toNumeric = 1;
data = read_excel(filePath, toNumeric);

%---------Clean Data----------
data = dataCleaning(data); %reduce apparent outliers

%---Post Cleaning Inspection---
fprintf('You will now see effects of data cleaning\n');
inspectData(data,1); % plots each feature vs price


%% =================== Training Data ===================

%--split data into train, val & test--
n = length(data);
[trainInd,valInd,testInd] = dividerand(n,0.6,0.3,0.1);
trainData = data(trainInd,:);
testData = data(testInd,:);
valData = data(valInd,:);

%--return a fitted hypothesis
global theta
[theta,minx,maxx,J_history,Jval_history] = Training(trainData,valData);

%% ====== plotting Errors ======

figure, hold on 
plot(J_history),plot(Jval_history,'--','LineWidth',3)
legend('J_T','J_V')
title('J-train and J-CV vs. Iterations');
xlabel('Number of Iterations');
ylabel('Cost');
hold off

%% ====  Determination and display of costs and other hyperparameters === 
testData = sort(testData);
Xtest = testData(:,1:end-1);
ytest = testData(:,end);
trainCost = J_history(end);
CV_Cost = Jval_history(end);

global featureMultiplier lambda alpha num_iters
Xtest = multiplyFeatures(Xtest,featureMultiplier);
numerator = bsxfun(@minus, Xtest, maxx);
denomenator = maxx-minx;
Xtest = bsxfun(@rdivide, numerator, denomenator);
mtest = length(Xtest);
Xtest = [ones(mtest,1),Xtest];

testCost = computeCostRegularized(Xtest, ytest, theta);
clc

l = lambda; dop = featureMultiplier;
fprintf('\nTraining Error =  %.4f\n',trainCost);
fprintf('Cross Validation Error =  %.4f\n',CV_Cost);
fprintf('Test Error = %.4f\n',testCost);
fprintf('lambda = %.2f\n',lambda);
fprintf('alpha = %.5f\n',alpha);
fprintf('Number of iterations for Gradient Descent = %.0f\n',num_iters);
fprintf('Degree of polynomials = %.0f\n',dop);
