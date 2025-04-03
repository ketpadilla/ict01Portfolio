% File: subtract.m
% Author: Kristian Padilla
% Date: 2021
% Revised: April 03, 2025
% Description: Subtracts two numbers.

function subtract(num1, num2)
    % Syntax:
    %  subtract(num1, num2)
    %
    % Input:
    %   num1 - first number
    %   num2 - second number

    result = num1 - num2;
    fprintf('The difference of %d and %d is %d.\n\n', num1, num2, result);
end