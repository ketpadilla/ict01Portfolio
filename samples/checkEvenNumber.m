% File: checkEvenNumber.m
% Author: Kristian Padilla
% Date: 2021
% Revised: April 03, 2025
% Description: Checks if the elements of an array are divisible by 2 and stops when an even number is found.

function main()
    % MAIN Entry point for generating subplots
    clear; clc; close all;
    
    inArr = double([]);
    inArr = input('Enter an array of numbers (e.g., [1, 3, 6, 7]): ');
    len = length(inArr);

    for ii = 1 : len
        if mod(inArr(ii), 2) == 0
            fprintf('Even number, %.1f, is found\n',inArr(ii));
            break
        end

        fprintf('%.1f is not divisible by 2.0\n',inArr(ii));
    end
end

main()