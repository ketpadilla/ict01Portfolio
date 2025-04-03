% File: shippingCost.m
% Author: Kristian Padilla
% Date: 2021
% Revised: April 03, 2025
% Description: Calculates the shipping cost based on weight.

function cost = calculateShippingCost(weight)
    % Calculates the shipping cost based on weight.
    %
    % Syntax:
    %   cost = calculateShippingCost(weight)
    %
    % Input:
    %   weight - the weight of the package
    %
    % Output:
    %   cost - the calculated shipping cost

    if weight <= 70
        cost = 15 + (5 * (weight - 2));
    elseif weight <= 100
        cost = 30 + (5 * (weight - 2));
    else
        error('Packages heavier than 100 pounds cannot be mailed!');
    end
end

function main()
    % MAIN Entry point for the program
    clear; clc; close all;

    weight = input('Enter the weight of the package (in lbs): ');

    try
        cost = calculateShippingCost(weight);
        fprintf('Shipping cost = $%.2f\n', cost);
    catch err
        disp(err.message);
    end
end

main();
