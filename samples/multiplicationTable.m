% File: multiplicationTable.m
% Author: Kristian Padilla
% Date: 2021
% Revised: April 03, 2025
% Description: Displays the multiplication table for two numbers.

function getMulTable(num1, num2)
    % Calculates and displays the multiplication table of two numbers
    %
    % Syntax:
    %   getMulTable(num1, num2)
    %
    % Input:
    %   num1 - first number to be multiplied
    %   num2 - second number to be multiplied

    for ii = 1 : num1
        for jj = 1 : num2
            result = ii * jj;
            fprintf('%d x %d = %d\n', ii, jj, result);
        end
    end
end

function main()
    % MAIN Entry point for the program
    clear; clc; close all;

    num1 = input('Input first integer: ');
    num2 = input('Input second integer: ');

    getMulTable(num1, num2);
end

main();
