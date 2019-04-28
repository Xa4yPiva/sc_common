function [c] = Cumulants(r)

N = length(r);
rAbs = abs(r);
c20 = abs(sum(r .^ 2)) / N;
c21 = sum(rAbs .^ 2) / N;
c40 = abs(sum(r .* r .* r .* r)) / N - 3 * c20;
c41 = abs(sum(r .* r .* r .* conj(r))) / N - 3 * c20 * c21;
c42 = sum(rAbs .* rAbs .* rAbs .* rAbs) / N - c20^2 - 2 * c21^2;

c = [c20, c21, c40, c41, c42];

end

