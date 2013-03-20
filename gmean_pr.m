function [ gm, p, r ] = gmean_pr(y, yhat)
% GMEAN_PR(y, yhat) Calculates precision, recall, and geometric mean of the two
% for binary classification tasks.
% 
% INPUT
%   y       true labels (Assumes positive class is +1)
%   yhat    predicted labels
%
% RETURNS
%   gm      geometric mean of precision, recall
%   p       precision
%   r       recall
% 
% The geometric mean of two numbers is equal to the square root of their
% product:
%
%            
%       GM = sqrt(PRECISION * RECALL)
%
%
% Author: Dave Kale (dkale@usc.edu)

p = precision(y, yhat);
r = recall(y, yhat);

gm = sqrt(p * r);
