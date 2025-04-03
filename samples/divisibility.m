% File: divisibility.m
% Author: Kristian Padilla
% Date: 2021
% Revised: April 03, 2025
% Description: Checks which numbers in an array are divisible by a fixed divisor.

function checkDivisibility(inArr, Div)
    % Checks which numbers in an array are divisible by a given divisor.
    %
    % Syntax:
    %   checkDivisibility(inArr, Div)
    %
    % Input:
    %   inArr - an array of numeric values to evaluate.
    %   Div - the fixed divisor for checking divisibility.

    len = length(inArr);
    
    fprintf('\nResults:\n');
    for ii = 1:len
        if mod(inArr(ii), Div) == 0
            fprintf('%.1f is divisible by %.1f\n', inArr(ii), Div);
        end
    end
    fprintf('\n');
end

function main()
    % MAIN Entry point for the program
    clear; clc; close all;

    indexVal = input('How many numbers do you want to enter? ');

    inArr = zeros(1, indexVal); % Preallocate array for efficiency

    for counter = 1:indexVal
        inArr(counter) = input('Input number: ');
    end

    Div = input('Input Fixed Divisor: ');

    checkDivisibility(inArr, Div);
end

main();
