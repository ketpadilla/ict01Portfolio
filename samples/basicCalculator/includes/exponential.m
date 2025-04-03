% File: exponential.m
% Author: Kristian Padilla
% Date: 2021
% Revised: April 03, 2025
% Description: Raises the first number to the power of the second number.

function exponential(num1, num2)
    % Syntax:
    %  exponential(num1, num2)
    %
    % Input:
    %   num1 - first number
    %   num2 - second number

    result = num1 ^ num2;
    fprintf('The power of %d and %d is %d.\n\n', num1, num2, result);
end