function [ fs, p, r ] = fscore(y, yhat, beta)
% FSCORE(y, yhat, beta) Calculates precision, recall, and F-score for
% binary classification tasks.
% 
% INPUT
%   y       true labels (Assumes positive class is +1)
%   yhat    predicted labels
%   beta    (optional) value of beta for general score (beta = 1 for F1)
%
% RETURNS
%   fs      F-score
%   p       precision
%   r       recall
% 
% F-score is defined as
%
%            (1 + BETA^2) * PRECISION * RECALL
%       F  = ---------------------------------
%              (BETA^2 * PRECISION) + RECALL
%
% When beta = 1 (F1 or balanced F-score), this becomes the harmonic mean of
% precision and recall:
%
%            2 * PRECISION * RECALL
%       F1 = ----------------------
%              PRECISION + RECALL
%
% NOTE: assumes labels are numeric, where 1 is positive class and
% negative class is ~= 1.
%
% Author: Dave Kale (dkale@usc.edu)

assert(nargin >= 2)
if nargin == 2
    beta = 1;
end

p = precision(y, yhat);
r = recall(y, yhat);

fs = (1 + beta^2) * (p * r) / ((beta^2 * p) + r);
