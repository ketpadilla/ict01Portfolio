% File: fractionType.m
% Author: Kristian Padilla
% Date: 2021
% Revised: April 03, 2025
% Description: Determines the type of a fraction (proper, whole, improper, or undefined).

function determineFractionType(numerator, denominator)
    % Determines the type of a fraction based on its numerator and denominator.
    %
    % Syntax:
    %   determineFractionType(numerator, denominator)
    %
    % Input:
    %   numerator - the fraction's numerator.
    %   denominator - the fraction's denominator.
    
    if denominator == 0
        fprintf('Undefined\n');
    elseif numerator < denominator
        fprintf('Proper Fraction\n');
    elseif rem(numerator, denominator) == 0
        fprintf('Whole Fraction\n');
    else
        fprintf('Improper Fraction\n');
    end
end

function main()
    % MAIN Entry point for the program
    clear; clc; close all;

    numerator = input('Enter a numerator: ');
    denominator = input('Enter a denominator: ');

    determineFractionType(numerator, denominator);
end

main();
