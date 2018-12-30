function [] = PlotProbRight(numFig, probRight, probRightOverall, snr, markers, pRightNames, proNames)
% PlotProbRight(numFig, probRight, probRightOverall, snr, markers, modNames)

figure(numFig(1));
set(gcf, 'color', 'w');
set(groot, 'DefaultAxesFontSize', 18);
for i = 1 : size(probRight, 1)
    plot(snr, probRight(i,:), 'marker', markers(i), 'markersize', 10, 'linewidth', 2);
    hold on;
end
grid on;
xlabel('SNR, dB');
ylabel('Probability of right decision');
legend(pRightNames, 'location', 'southeast');
legend('show');

figure(numFig(2));
set(gcf, 'color', 'w');
set(groot, 'DefaultAxesFontSize', 18);
for i = 1 : size(probRightOverall, 1)
    hold on;
    plot(snr, probRightOverall(i, :), 'marker', markers(i), 'markersize', 10, 'linewidth', 2);
end
grid on;
xlabel('SNR, dB');
ylabel('Overall probability of right decision');
legend(proNames, 'location', 'southeast');

end

