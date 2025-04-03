% File: add.m
% Author: Kristian Padilla
% Date: 2021
% Revised: April 03, 2025
% Description: Adds two numbers.

function add(num1, num2)
    % Syntax:
    %  add(num1, num2)
    %
    % Input:
    %   num1 - first number
    %   num2 - second number

    result = num1 + num2;
    fprintf('The sum of %d and %d is %d.\n\n', num1, num2, result);
end