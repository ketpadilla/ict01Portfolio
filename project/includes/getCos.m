% File: getCos.m
% Author: Kristian Padilla
% Date: 2021
% Revised: April 03, 2025
% Description: Plots cos function based on provided parameters and marks
% minima, maxima, and intercepts

function y = getCos(amplitude, frequency, phaseShift, verticalShift, numCycles, endPoint, xValues, phasePoints, trigFunc)
    % Syntax:
    %   getCos(amplitude, frequency, phaseShift, verticalShift, numCycles, endPoint, xValues, phasePoints, trigFunc)
    %
    % Inputs:
    %   amplitude    - The amplitude of the trigonometric function
    %   frequency    - The frequency (b) of the trigonometric function
    %   phaseShift   - The phase shift (c) of the trigonometric function
    %   verticalShift - The vertical shift (d) of the trigonometric function
    %   numCycles    - The number of cycles to display
    %   period       - The period of the trigonometric function
    %   endPoint     - The end point of the graph
    %   xValues      - The x values for plotting
    %   phasePoints  - The phase points to mark on the graph
    %   trigFunc     - The type of trigonometric function (e.g., 'sin', 'cos', etc.)

    if frequency > 0
        % If frequency is positive, use the standard equation
        y = amplitude * cos(frequency * xValues + phaseShift) + verticalShift;
        fprintf('\nEquation of Trigonometric Function: y = %.2f * %s(%.2fx + %.2f) + %.2f\n\n', amplitude, trigFunc, frequency, phaseShift, verticalShift);
    else
        % If frequency is negative, invert the function
        frequency = abs(frequency);
        y = -amplitude * cos(frequency * xValues + phaseShift) + verticalShift;
        fprintf('\nEquation of Trigonometric Function: y = -%.2f * %s(%.2fx + %.2f) + %.2f\n\n', amplitude, trigFunc, frequency, phaseShift, verticalShift);
    end

    % Minima and Maxima
    TF = islocalmin(y);  % Local minima
    TF1 = islocalmax(y); % Local maxima

    % x-intercepts
    if verticalShift == 0
        [xInt, yInt] = intersections(xValues, y, xValues, zeros(size(y)));
    elseif verticalShift ~= 0 && numCycles == 1
        x1 = endPoint / 4;
        x2 = (endPoint + (endPoint / 2)) / 2;
    end

    % Plotting the trigonometric function
    plot(xValues, y, 'k-');  % Plot the function in black
    set(gca, 'xtick', phasePoints);
    set(gca, 'xticklabel', string(sym(phasePoints)));
    yline(verticalShift, '--b');  % Plot the vertical shift line
    xlabel('x');
    ylabel('y');
    title(['Graph of Cos Function']);
    hold on;
    grid on;

    % Plot local minima and maxima as red stars
    plot(xValues, y, xValues(TF), y(TF), 'r*');  % Minima points
    plot(xValues, y, xValues(TF1), y(TF1), 'r*');  % Maxima points

    % Plot x-intercepts
    if verticalShift == 0
        plot(xInt, yInt, 'm*', 'MarkerSize', 10);  % x-intercepts when verticalShift = 0
    elseif verticalShift ~= 0 && numCycles == 1
        plot(x1, verticalShift, 'm*', 'MarkerSize', 10);  % Plot x-intercepts for other cases
        plot(x2, verticalShift, 'm*', 'MarkerSize', 10);
    end
    hold off;
end
