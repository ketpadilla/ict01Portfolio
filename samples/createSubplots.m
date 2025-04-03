% File: createSubplots.m
% Author: Kristian Padilla
% Date: 2021
% Revised: April 03, 2025
% Description: Generates multiple plots (bar plot, pie chart, polar plot, and ezplot) in a 2x2 grid.
% 
% Requirements:
% - Symbolic Math Toolbox (for symbolic calculations like `ezplot` and `syms`).

function main()
    % MAIN Entry point for generating subplots
    clear; clc; close all;

    % First plot: Bar plot
    xValues = linspace(0, 10, 100);
    yValues = exp(-5.0 * xValues) .* sin(2 * xValues);
    figure(1);
    subplot(2, 2, 1);
    bar(xValues, yValues);
    title('Bar Plot');
    grid on;
    hold on;

    % Second plot: Pie chart
    pieData = [250, 150, 200, 150, 250];
    subplot(2, 2, 2);
    pie(pieData, pieData == max(pieData));
    explode = [1, 0, 0, 0, 1];
    pie(pieData, explode);
    title('Pie Chart');

    % Third plot: Polar plot
    thetaValues = linspace(0, 6 * pi, 41);
    subplot(2, 2, 3);
    scaleFactor = 0.5;
    radiusValues = scaleFactor .* thetaValues;
    polar(thetaValues, radiusValues);
    title('Polar Plot');

    % Fourth plot: Ezplot plot
    syms xSymbol;
    subplot(2, 2, 4);
    expression = sin(xSymbol) / xSymbol;
    ezplotResult = ezplot(erf(expression), [-4 * pi, 4 * pi]);
    ezplotResult.Color = 'r';
    ezplotResult.Marker = 'p';
    title('Ezplot Plot');

    hold off;
end

main();
