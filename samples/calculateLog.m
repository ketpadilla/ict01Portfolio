% File: calculateLog.m
% Author: Kristian Padilla
% Date: 2021
% Revised: April 03, 2025
% Description: Calculates a logarithmic function based on user input or random selection.

function result = calculateLogFunction(x)
    % Calculates the logarithmic function log(1/(1-x)) for x < 1.
    %
    % Syntax:
    %   result = calculateLogFunction(x)
    %
    % Input:
    %   x - the input value for the function
    %
    % Output:
    %   result - the computed value of the function

    if x < 1
        result = log(1 / (1 - x));
    else
        error('Error: x must be less than 1.');
    end
end

function main()
    % MAIN Entry point for the program
    clear; clc; close all;

    % Simulate user-generated input
    % disp('Enter x: ');
    rndNum = randi([1, 3]);
    sampleNum = [-1, 0, 2];
    x = sampleNum(rndNum);  % Random selection from sample values

    fprintf('Selected x = %.2f\n', x);

    % Compute the function for the selected x
    try
        fun = calculateLogFunction(x);
        fprintf('Function result: %.2f\n', fun);
    catch err
        disp(err.message);  % Display error message if x >= 1
    end
end

main();
