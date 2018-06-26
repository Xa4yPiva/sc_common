function [aNorm, aCentNorm] = SubCoeffsA(envelope)
%SUBCOEFFSA Summary of this function goes here
%   Detailed explanation goes here

a = abs(envelope);
aMean = mean(a);
aNorm = a / aMean;
aCentNorm = aNorm - 1;

% figure(2);
% subplot(3,1,1); plot(a); grid on;
% subplot(3,1,2); plot(aNorm); grid on;
% subplot(3,1,3); plot(aCentNorm); grid on;

end

