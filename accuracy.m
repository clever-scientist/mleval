function a = accuracy(y, yhat)
% ACCURACY(y, yhat) Calculates accuracy for classification task.
%
%   y       true labels
%   yhat    predicted labels
%
% Accuracy is the number of correct predictions (i.e., true positives
% plus true negatives) divded by all predictions
%
%              TP + TN
%   ACCURACY = -------
%                ALL
%
% NOTE: assumes labels are numeric.
%
% Author: Dave Kale (dkale@usc.edu)

a = sum(y==yhat) / numel(y);
