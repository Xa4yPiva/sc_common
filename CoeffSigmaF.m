function [sigmaAF, sigmaDF] = CoeffSigmaF(envelope, aNorm, aThreshold)

phDiff = angle(envelope(2:end) .* conj(envelope(1:end-1)));
phDiff = phDiff(aNorm(1:end-1) > aThreshold);
phDiff = phDiff - mean(phDiff);
phDiffAbs = abs(phDiff);

sigmaAF = std(phDiffAbs);
sigmaDF = std(phDiff);

end

