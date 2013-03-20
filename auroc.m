function [ auc, opt_fp, opt_tp ] = auroc(y, yscore)
% AUROC(y, yscore) Calculates area under the receiver operating
% characteristic (ROC) curve.
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
% The ROC curve plots true positive rate vs. false positive rate. When
% people say "AUC" they usually mean under the ROC curve. We use the
% built-in MATLAB command perfcurve to calculate AUC here.
%
% NOTE: assumes labels are numeric, where 1 is positive class and
% negative class is ~= 1.
%
% Author: Dave Kale (dkale@usc.edu)

[x, y, t, auc, opt] = perfcurve(y, yscore, 1, 'xCrit', 'FPR', 'yCrit', 'TPR');
opt_fp = opt(1);
opt_tp = opt(2);
