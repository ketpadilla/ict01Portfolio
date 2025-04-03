% File: evaluateExpression.m
% Author: Kristian Padilla
% Date: 2021
% Revised: April 03, 2025
% Description: Evaluates an expression based on user input for x and y coefficients using branching statements.

function result = evaluateExpression(x, y)
    % Evaluates the expression based on the values of x and y.
    %
    % Syntax:
    %   result = evaluateExpression(x, y)
    %
    % Input:
    %   x - coefficient for x
    %   y - coefficient for y
    %
    % Output:
    %   result - the evaluated result based on x and y

    if x >= 0 && y >= 0
        result = x + y;
    elseif x >= 0 && y < 0
        result = x + (y^2);
    elseif x < 0 && y >= 0
        result = y + (x^2);
    else
        result = (y^2) + (x^2);
    end
end

function main()
    % MAIN Entry point for the program
    clear; clc; close all;

    % Simulate user-generated input for coefficients x and y
    disp('Enter the x coefficient:');
    x = randi([-150, 150]);  % Random selection for x
    disp('Enter the y coefficient:');
    y = randi([-150, 150]);  % Random selection for y

    fprintf('Selected x = %d, y = %d\n', x, y);

    % Compute the expression for the selected x and y
    result = evaluateExpression(x, y);

    % Display the result
    fprintf('The result of the evaluation is: %.2f\n', result);
end

main();
