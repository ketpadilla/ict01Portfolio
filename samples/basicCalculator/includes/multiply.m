% File: multiply.m
% Author: Kristian Padilla
% Date: 2021
% Revised: April 03, 2025
% Description: Multiplies two numbers.

function multiply(num1, num2)
    % Syntax:
    %  multiply(num1, num2)
    %
    % Input:
    %   num1 - first number
    %   num2 - second number

    result = num1 * num2;
    fprintf('The product of %d and %d is %d.\n\n', num1, num2, result);
end