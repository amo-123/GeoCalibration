function [fitresult, gof] = FitGauss2(sumX, doub)
%CREATEFIT(SUMX,DOUB)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : sumX
%      Y Output: doub
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 29-Mar-2019 16:02:31


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( sumX, doub );

% Set up fittype and options.
ft = fittype( 'gauss2' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [-Inf -Inf 0 -Inf -Inf 0];
opts.StartPoint = [95.3796588738397 120.2869 8.2697852087928 65.1468 180.4405 17.976696833566];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );
% 
% % Plot fit with data.
% figure( 'Name', 'untitled fit 1' );
% h = plot( fitresult, xData, yData );
% legend( h, 'doub vs. sumX', 'untitled fit 1', 'Location', 'NorthEast' );
% % Label axes
% xlabel sumX
% ylabel doub
% grid on

