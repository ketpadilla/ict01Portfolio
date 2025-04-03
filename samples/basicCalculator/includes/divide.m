% File: divid.m
% Author: Kristian Padilla
% Date: 2021
% Revised: April 03, 2025
% Description: Divides the first number by the second.

function divide(num1, num2)
    % Syntax:
    %  divide(num1, num2)
    %
    % Input:
    %   num1 - first number
    %   num2 - second number

    if num2 == 0
        error('Cannot divide by zero!');
        return;
    end

    result = num1 / num2;
    fprintf('The quotient of %d and %d is %d.\n\n', num1, num2, result);
end