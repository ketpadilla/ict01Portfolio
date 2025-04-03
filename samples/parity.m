% File: parity.m
% Author: Kristian Padilla
% Date: 2021
% Revised: April 03, 2025
% Description: Determines if a number is odd or even.

function getParity(num)
    % Determines whether a number is odd or even.
    %
    % Syntax:
    %   getParity(num)
    %
    % Input:
    %   num - the numeric value to check.
    
    if rem(num, 2) ~= 0
        fprintf('Number is odd.\n');
    else
        fprintf('Number is even.\n');
    end
end

function main()
    % MAIN Entry point for the program
    clear; clc; close all;

    num = input('Enter a number: ');
    getParity(num);
end

main();
