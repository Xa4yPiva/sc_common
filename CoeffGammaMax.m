function gammaMax = CoeffGammaMax(aCentNorm, Nfft)
%COEFFGAMMAMAX Summary of this function goes here
%   Detailed explanation goes here

% aAbsFft = abs(fft(aCentNorm, Nfft)); % Check this ( /N or /(N/2) or nothing)
% gammaMax = max(aAbsFft.^2) / Nfft;

aAbsFft = abs(fft(aCentNorm, Nfft)) / (Nfft/2); % Check this ( /N or /(N/2) or nothing)
gammaMax = max(aAbsFft.^2);

% figure(3); 
% subplot(1,2,1); plot(aCentNorm); grid on;
% subplot(1,2,2); plot(fftshift(aAbsFft)); grid on;

end

