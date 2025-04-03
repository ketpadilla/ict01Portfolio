% File: factorial.m
% Author: Kristian Padilla
% Date: 2021
% Revised: April 03, 2025
% Description: Calculates an integer's factorial

function result = getFactorial(num)
    % Computes the factorial of a given integer.
    %
    % Syntax:
    %   result = getFactorial(inValue)
    %
    % Input:
    %   num - the integer whose factorial is to be computed.
    %
    % Output:
    %   result - the computed factorial value.

    if num < 0
        disp('You must enter a positive integer!');
    else
       result = 1;
       for ii = 1 : num
           result = result * ii;
       end
    end
end

function main()
    % MAIN Entry point for the program
    clear; clc; close all;

    num = input('Enter an integer: ');
    result = getFactorial(num);

    fprintf('The factorial of %.2f is %.2f\n', num, result);
end

main();
