% File: getCot.m
% Author: Kristian Padilla
% Date: 2021
% Revised: April 03, 2025
% Description: Plots the secant function based on provided parameters and marks
% minima, maxima, and intercepts

function getCot(amplitude, frequency, phaseShift, verticalShift, endPoint, xValues, trigFunc)
    % Syntax:
    %   getCot(amplitude, frequency, phaseShift, verticalShift, endPoint, xValues, phasePoints, trigFunc)
    %
    % Inputs:
    %   amplitude    - The amplitude of the trigonometric function
    %   frequency    - The frequency (b) of the trigonometric function
    %   phaseShift   - The phase shift (c) of the trigonometric function
    %   verticalShift - The vertical shift (d) of the trigonometric function
    %   numCycles    - The number of cycles to display
    %   endPoint     - The end point of the graph
    %   xValues      - The x values for plotting
    %   phasePoints  - The phase points to mark on the graph
    %   trigFunc - The type of trigonometric function (e.g., 'cot')
    
    syms x
    
    % Define the cotangent function based on the parameters
    if frequency > 0
        y = amplitude * cot(frequency * x + phaseShift) + verticalShift;
        fprintf('\nEquation of Trigonometric Function: y = %d*%s(%dx + %d) + %d\n\n', amplitude, trigFunc, frequency, phaseShift, verticalShift);
    else
        frequency = abs(frequency);
        y = -amplitude * cot(frequency * x + phaseShift) + verticalShift;
        fprintf('\nEquation of Trigonometric Function: y = -%d*%s(%dx + %d) + %d\n\n', amplitude, trigFunc, frequency, phaseShift, verticalShift);
    end
    
    % Plotting
    fplot(y, [0 endPoint], 'k-');
    set(gca, 'xtick', xValues);
    set(gca, 'xticklabel', string(sym(xValues)));
    yline(verticalShift, '--b');
    xlabel('x');
    ylabel('y');
    title('Graph of Cotangent Function');
    hold on;
    grid on;
    hold off;
end

