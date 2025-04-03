% File: basicCalculator.m
% Author: Kristian Padilla
% Date: 2021
% Revised: April 03, 2025
% Description: Performs basic arithmetic operations based on user input (uses function files).

function main()
    % MAIN Entry point for the program
    addpath('includes');
    clear; clc; close all;

    num1=double(0);
    num2=double(0);

    num1=input('Enter first number: ');
    num2=input('Enter second number: ');
    
    fprintf('\nAvailable Operations:\n');
    fprintf('A. Addition\n');
    fprintf('B. Subtraction\n');
    fprintf('C. Multiplication\n');
    fprintf('D. Division\n');
    fprintf('E. Exponentiation\n\n');
    
    choice = char(' ');
    choice = input('Enter Chosen Option: ','s');

    switch upper(choice)
        case 'A'
            add(num1, num2);
        case 'B'
            subtract(num1, num2);
        case 'C'
            multiply(num1, num2);
        case 'D'
            divide(num1, num2);
        case 'E'
            exponential(num1, num2);
        otherwise
            fprintf('\nOption not included. Choose from the options provided.\n\n');
    end
end

main();
