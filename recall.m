function r = recall(y, yhat)
% RECALL(y, yhat) Calculates recall for binary classification tasks.
%
%   y       true labels (Assumes positive class is +1)
%   yhat    predicted labels
%
% Recall, a.k.a. sensitivity or true positive rate, is equal to the
% number of "true positives" divided by total number of positives
% (i.e., true positives plus false negatives):
%
%                  TP
%       RECALL = -------
%                TP + FN
%
% NOTE: assumes labels are numeric, where 1 is positive class and
% negative class is ~= 1.
%
% Author: Dave Kale (dkale@usc.edu)

r = sum((y==1) & (yhat==1)) / sum(y==1);
