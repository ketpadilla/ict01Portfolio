% File: sum1to1000.m
% Author: Kristian Padilla
% Date: 2021
% Revised: April 03, 2025
% Description: Calculates the sum of numbers from 1 to 1000.

function main()
    % MAIN Entry point for the program
    clear; clc; close all;

    outSum = double(0);

    for ii = 1:1000
        outSum = outSum+ii;
    end
    
    fprintf('The sum of 1 up to 1000 is equal to %i\n',outSum);
end

main();