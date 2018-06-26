function gammaMax = CoeffGammaMax(aCentNorm, Nfft)
%COEFFGAMMAMAX Summary of this function goes here
%   Detailed explanation goes here

aAbsFft = abs(fft(aCentNorm, Nfft)); % Check this ( /N or /(N/2) or nothing)
gammaMax = max(aAbsFft.^2 / Nfft);

% figure(3); plot(fftshift(aAbsFft)); grid on;

end

