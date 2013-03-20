function p = precision(y, yhat)
% PRECISION(y, yhat) Calculates precision for binary classification tasks.
%
%   y       true labels (Assumes positive class is +1)
%   yhat    predicted labels
%
% Precision, a.k.a. positive predictive value, is equal to the
% number of "true positives" divided by total number of predicted
% positives (i.e., true positives plus false positives):
%
%                  TP
%    PRECISION = -------
%                TP + FP
%
% NOTE: assumes labels are numeric, where 1 is positive class and
% negative class is ~= 1.
%
% Author: Dave Kale (dkale@usc.edu)

p = sum((y==1) & (yhat==1)) / sum(yhat==1);
