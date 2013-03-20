function [ auc ] = auprc(y, yscore)
% AUPRC(y, yscore) Calculates area under the precision-recall curve.
% 
% INPUT
%   y       true labels (Assumes positive class is +1)
%   yscore  decision values (probabilities, SVM output, etc.)
%
% RETURNS
%   auroc   area under the ROC curve
%   opt_tp  TP rate at the optimal point on the curve
%   opt_fp  FP rate at the optimal point on the curve
% 
% This is a slightly different AUC from the usual area under the ROC curve.
% Here we plot recall vs. precision.
%
% NOTE: assumes labels are numeric, where 1 is positive class and
% negative class is ~= 1.
%
% Author: Dave Kale (dkale@usc.edu)

[x, y, t, auc] = perfcurve(y, yscore, 1, 'xCrit', 'reca', 'yCrit', 'prec');
