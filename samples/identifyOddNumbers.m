% File: identifyOddNumbers.m
% Author: Kristian Padilla
% Date: 2021
% Revised: April 03, 2025
% Description: Identifies numbers in an array that are not divisible by 2.

function identifyOddNumbers(inArr)
    % Identifies numbers in an array that are not divisible by 2.
    %
    % Syntax:
    %   identifyOddNumbers(inArr)
    %
    % Input:
    %   inArr - an array of numeric values to evaluate.

    len = length(inArr);
    
    for ii = 1:len
        if mod(inArr(ii), 2) ~= 0
            fprintf('%.1f is not divisible by 2.0\n', inArr(ii));
        end
    end
end

function main()
    % MAIN Entry point for the program
    clear; clc; close all;

    inArr = input('[Input]: ');

    identifyOddNumbers(inArr);
end

main();
