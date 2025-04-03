% File: taxComparison.m
% Author: Kristian Padilla
% Date: 2021
% Revised: April 03, 2025
% Description: Compares tax calculations for 2002 and 2009 based on taxable income using branching statements.

function tax = calculateTax(income, year)
    % Computes tax based on income and tax rules for the specified year.
    %
    % Syntax:
    %   tax = calculateTax(income, year)
    %
    % Input:
    %   income - taxable income
    %   year   - tax year (2002 or 2009)
    %
    % Output:
    %   tax - computed tax including Medicare Levy

    tax = 0; % Initialize tax variable

    if year == 2009
        if income <= 6000
            tax = 0;
        elseif income <= 34000
            tax = (income - 6000) * 0.15;
        elseif income <= 80000
            tax = ((income - 34000) * 0.30) + 4200;
        elseif income <= 180000
            tax = ((income - 80000) * 0.40) + 18000;
        else
            tax = ((income - 180000) * 0.45) + 58000;
        end
    elseif year == 2002
        if income <= 6000
            tax = 0;
        elseif income <= 20000
            tax = (income - 6000) * 0.17;
        elseif income <= 50000
            tax = ((income - 20000) * 0.30) + 2380;
        elseif income <= 60000
            tax = ((income - 50000) * 0.42) + 11380;
        else
            tax = ((income - 60000) * 0.47) + 15580;
        end
    else
        error('Invalid tax year specified.');
    end

    % Add Medicare Levy (1.5%)
    tax = tax + (tax * 0.015);
end

function main()
    % MAIN Entry point for the program
    clear; clc; close all;

    % Prompt user for taxable income
    income = input('Enter taxable income: ');

    % Prompt user for tax year
    year = input('Enter tax year (2002 or 2009): ');

    % Validate year input
    if year ~= 2002 && year ~= 2009
        error('Invalid tax year. Please enter either 2002 or 2009.');
    end

    % Compute taxes for the entered year
    taxForYear = calculateTax(income, year);

    % Display the results
    fprintf('Total tax for %d = $%.2f\n', year, taxForYear);
end

main();
