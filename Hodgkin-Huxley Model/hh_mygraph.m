amplitudes = [5, 10, 20, 30, 50, 70, 100];            
frequencies = [1, 6, 7, 8, 10, 11, 12];              


x = linspace(0, 105, 1000);

% Interpolate frequency values using spline method
f = spline(amplitudes, frequencies, x);

% Plot the interpolated curve
plot(x, f, 'b-', 'LineWidth', 2);
hold on;

% Overlay the original data points
plot(amplitudes, frequencies, 'ro', 'MarkerSize', 8, 'LineWidth', 2);

% Customize the plot
xlabel('Amplitude (\muA/cm^2)');
ylabel('Frequency (No. of APs triggered)');
title('Stimulus Amplitude vs Action Potential Frequency');
ylim([0 15]);
grid on;
