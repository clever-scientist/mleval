function m = mcc(y, yhat)
% MCC(y, yhat) Calculates matthews correlation coefficient for binary
% classification tasks.
% 
% INPUT
%   y       true labels (Assumes positive class is +1)
%   yhat    predicted labels
%
% RETURNS
%   m      F-score
% 
% MCC has a rather complicated formula involving true/false
% positives/negatives:
%
%                           TP * FN - FP * FN
%       M  = ---------------------------------------------------
%            sqrt((TP + FP) * (TP + FN) * (TN + FP) * (TN + FN))
%
% NOTE: assumes labels are numeric, where 1 is positive class and
% negative class is ~= 1.
%
% Author: Dave Kale (dkale@usc.edu)

tp = sum((y==1) & (yhat==1));
fp = sum(yhat==1) - tp;
tn = sum((y~=1) & (yhat~=1));
fn = sum(yhat~=1) - tn;

mcc_denom = sqrt((tp + fp) * (tp + fn) * (tn + fp) * (tn + fn));
if mcc_denom == 0
    mcc_denom = 1;
end
m = (tp * tn - fp * fn) / mcc_denom;
