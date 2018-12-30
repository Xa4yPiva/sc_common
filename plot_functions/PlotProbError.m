function [] = PlotProbError(numFig, probError, probErrorOverall, snr, markers, pErrNames, peoNames)

figure(numFig(1));
set(gcf, 'color', 'w');
set(groot, 'DefaultAxesFontSize', 18);
for i = 1 : size(probError, 1)
    semilogy(snr, probError(i,:), 'marker', markers(i), 'markersize', 10, 'linewidth', 2);
    hold on;
end
grid on;
xlabel('SNR, dB');
ylabel('Probability of error');
legend(pErrNames, 'location', 'southeast'); legend('show');

figure(numFig(2));
set(gcf, 'color', 'w');
set(groot, 'DefaultAxesFontSize', 18);
for i = 1 : size(probErrorOverall, 1)
    semilogy(snr, probErrorOverall(i, :), 'marker', markers(i), 'markersize', 10, 'linewidth', 2);
    hold on;
end
grid on;
xlabel('SNR, dB');
ylabel('Probability of error');
legend(peoNames, 'location', 'southeast');

end

